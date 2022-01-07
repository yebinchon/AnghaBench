
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct mt7615_fw_trailer {int addr; int len; int feature_set; } ;
struct TYPE_2__ {int dev; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;


 int CR4_REGION_NUM ;
 scalar_t__ IMG_CRC_LEN ;
 int N9_REGION_NUM ;
 int dev_err (int ,char*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ mt7615_mcu_gen_dl_mode (int ,int) ;
 int mt7615_mcu_init_download (struct mt7615_dev*,scalar_t__,scalar_t__,scalar_t__) ;
 int mt7615_mcu_send_firmware (struct mt7615_dev*,int const*,scalar_t__) ;

__attribute__((used)) static int
mt7615_mcu_send_ram_firmware(struct mt7615_dev *dev,
        const struct mt7615_fw_trailer *hdr,
        const u8 *data, bool is_cr4)
{
 int n_region = is_cr4 ? CR4_REGION_NUM : N9_REGION_NUM;
 int err, i, offset = 0;
 u32 len, addr, mode;

 for (i = 0; i < n_region; i++) {
  mode = mt7615_mcu_gen_dl_mode(hdr[i].feature_set, is_cr4);
  len = le32_to_cpu(hdr[i].len) + IMG_CRC_LEN;
  addr = le32_to_cpu(hdr[i].addr);

  err = mt7615_mcu_init_download(dev, addr, len, mode);
  if (err) {
   dev_err(dev->mt76.dev, "Download request failed\n");
   return err;
  }

  err = mt7615_mcu_send_firmware(dev, data + offset, len);
  if (err) {
   dev_err(dev->mt76.dev, "Failed to send firmware to device\n");
   return err;
  }

  offset += len;
 }

 return 0;
}
