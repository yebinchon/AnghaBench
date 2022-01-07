
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct if_cs_card {scalar_t__ align_regs; } ;
struct firmware {int size; int * data; } ;


 int ENODEV ;
 int IF_CS_BIT_COMMAND ;
 int IF_CS_CARD_STATUS ;
 int IF_CS_CMD ;
 int IF_CS_CMD_LEN ;
 int IF_CS_HOST_INT_CAUSE ;
 int IF_CS_HOST_STATUS ;
 int IF_CS_SCRATCH ;
 int IF_CS_SCRATCH_BOOT_OK ;
 int IF_CS_SCRATCH_HELPER_OK ;
 int if_cs_poll_while_fw_download (struct if_cs_card*,int ,int) ;
 int if_cs_read16 (struct if_cs_card*,int ) ;
 int if_cs_read8 (struct if_cs_card*,int ) ;
 int if_cs_write16 (struct if_cs_card*,int ,int) ;
 int if_cs_write16_rep (struct if_cs_card*,int ,int *,int) ;
 int if_cs_write8 (struct if_cs_card*,int ,int) ;
 int lbs_deb_cs (char*,int) ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static int if_cs_prog_helper(struct if_cs_card *card, const struct firmware *fw)
{
 int ret = 0;
 int sent = 0;
 u8 scratch;






 if (card->align_regs)
  scratch = if_cs_read16(card, IF_CS_SCRATCH) >> 8;
 else
  scratch = if_cs_read8(card, IF_CS_SCRATCH);




 if (scratch == IF_CS_SCRATCH_HELPER_OK)
  goto done;


 if (scratch != IF_CS_SCRATCH_BOOT_OK) {
  ret = -ENODEV;
  goto done;
 }

 lbs_deb_cs("helper size %td\n", fw->size);




 for (;;) {

  int count = 256;
  int remain = fw->size - sent;

  if (remain < count)
   count = remain;





  if_cs_write16(card, IF_CS_CMD_LEN, count);


  if (count)
   if_cs_write16_rep(card, IF_CS_CMD,
    &fw->data[sent],
    count >> 1);





  if_cs_write8(card, IF_CS_HOST_STATUS, IF_CS_BIT_COMMAND);





  if_cs_write16(card, IF_CS_HOST_INT_CAUSE, IF_CS_BIT_COMMAND);





  ret = if_cs_poll_while_fw_download(card, IF_CS_CARD_STATUS,
   IF_CS_BIT_COMMAND);
  if (ret < 0) {
   pr_err("can't download helper at 0x%x, ret %d\n",
          sent, ret);
   goto done;
  }

  if (count == 0)
   break;

  sent += count;
 }

done:
 return ret;
}
