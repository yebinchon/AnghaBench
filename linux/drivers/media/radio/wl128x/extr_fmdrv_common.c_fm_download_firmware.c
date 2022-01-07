
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fmdev {int flag; TYPE_1__* radio_dev; } ;
struct firmware {int size; scalar_t__ data; } ;
struct bts_header {scalar_t__ magic; } ;
struct bts_action_delay {int msec; } ;
struct bts_action {int type; scalar_t__ size; scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;




 int EINVAL ;
 int FM_FW_DW_INPROGRESS ;
 scalar_t__ FM_FW_FILE_HEADER_MAGIC ;
 int clear_bit (int ,int *) ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__,scalar_t__,int *,int *) ;
 int fmdbg (char*,int,...) ;
 int fmerr (char*,int const*) ;
 int mdelay (int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int const*,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int fm_download_firmware(struct fmdev *fmdev, const u8 *fw_name)
{
 const struct firmware *fw_entry;
 struct bts_header *fw_header;
 struct bts_action *action;
 struct bts_action_delay *delay;
 u8 *fw_data;
 int ret, fw_len, cmd_cnt;

 cmd_cnt = 0;
 set_bit(FM_FW_DW_INPROGRESS, &fmdev->flag);

 ret = request_firmware(&fw_entry, fw_name,
    &fmdev->radio_dev->dev);
 if (ret < 0) {
  fmerr("Unable to read firmware(%s) content\n", fw_name);
  return ret;
 }
 fmdbg("Firmware(%s) length : %zu bytes\n", fw_name, fw_entry->size);

 fw_data = (void *)fw_entry->data;
 fw_len = fw_entry->size;

 fw_header = (struct bts_header *)fw_data;
 if (fw_header->magic != FM_FW_FILE_HEADER_MAGIC) {
  fmerr("%s not a legal TI firmware file\n", fw_name);
  ret = -EINVAL;
  goto rel_fw;
 }
 fmdbg("FW(%s) magic number : 0x%x\n", fw_name, fw_header->magic);


 fw_data += sizeof(struct bts_header);
 fw_len -= sizeof(struct bts_header);

 while (fw_data && fw_len > 0) {
  action = (struct bts_action *)fw_data;

  switch (action->type) {
  case 128:
   ret = fmc_send_cmd(fmdev, 0, 0, action->data,
        action->size, ((void*)0), ((void*)0));
   if (ret)
    goto rel_fw;

   cmd_cnt++;
   break;

  case 129:
   delay = (struct bts_action_delay *)action->data;
   mdelay(delay->msec);
   break;
  }

  fw_data += (sizeof(struct bts_action) + (action->size));
  fw_len -= (sizeof(struct bts_action) + (action->size));
 }
 fmdbg("Firmware commands(%d) loaded to chip\n", cmd_cnt);
rel_fw:
 release_firmware(fw_entry);
 clear_bit(FM_FW_DW_INPROGRESS, &fmdev->flag);

 return ret;
}
