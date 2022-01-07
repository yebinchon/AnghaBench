
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt7615_fw_trailer {int build_date; int fw_ver; int addr; } ;
struct TYPE_2__ {int dev; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;
struct firmware {int data; int size; } ;


 int CR4_REGION_NUM ;
 int EINVAL ;
 int FW_START_OVERRIDE ;
 int FW_START_WORKING_PDA_CR4 ;
 int MT7615_FIRMWARE_CR4 ;
 int MT7615_FIRMWARE_N9 ;
 int N9_REGION_NUM ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,int ) ;
 int le32_to_cpu (int ) ;
 int mt7615_mcu_send_ram_firmware (struct mt7615_dev*,struct mt7615_fw_trailer const*,int,int) ;
 int mt7615_mcu_start_firmware (struct mt7615_dev*,int ,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int ) ;

__attribute__((used)) static int mt7615_load_ram(struct mt7615_dev *dev)
{
 const struct mt7615_fw_trailer *hdr;
 const struct firmware *fw;
 int ret;

 ret = request_firmware(&fw, MT7615_FIRMWARE_N9, dev->mt76.dev);
 if (ret)
  return ret;

 if (!fw || !fw->data || fw->size < N9_REGION_NUM * sizeof(*hdr)) {
  dev_err(dev->mt76.dev, "Invalid firmware\n");
  ret = -EINVAL;
  goto out;
 }

 hdr = (const struct mt7615_fw_trailer *)(fw->data + fw->size -
     N9_REGION_NUM * sizeof(*hdr));

 dev_info(dev->mt76.dev, "N9 Firmware Version: %.10s, Build Time: %.15s\n",
   hdr->fw_ver, hdr->build_date);

 ret = mt7615_mcu_send_ram_firmware(dev, hdr, fw->data, 0);
 if (ret)
  goto out;

 ret = mt7615_mcu_start_firmware(dev, le32_to_cpu(hdr->addr),
     FW_START_OVERRIDE);
 if (ret) {
  dev_err(dev->mt76.dev, "Failed to start N9 firmware\n");
  goto out;
 }

 release_firmware(fw);

 ret = request_firmware(&fw, MT7615_FIRMWARE_CR4, dev->mt76.dev);
 if (ret)
  return ret;

 if (!fw || !fw->data || fw->size < CR4_REGION_NUM * sizeof(*hdr)) {
  dev_err(dev->mt76.dev, "Invalid firmware\n");
  ret = -EINVAL;
  goto out;
 }

 hdr = (const struct mt7615_fw_trailer *)(fw->data + fw->size -
     CR4_REGION_NUM * sizeof(*hdr));

 dev_info(dev->mt76.dev, "CR4 Firmware Version: %.10s, Build Time: %.15s\n",
   hdr->fw_ver, hdr->build_date);

 ret = mt7615_mcu_send_ram_firmware(dev, hdr, fw->data, 1);
 if (ret)
  goto out;

 ret = mt7615_mcu_start_firmware(dev, 0, FW_START_WORKING_PDA_CR4);
 if (ret)
  dev_err(dev->mt76.dev, "Failed to start CR4 firmware\n");

out:
 release_firmware(fw);

 return ret;
}
