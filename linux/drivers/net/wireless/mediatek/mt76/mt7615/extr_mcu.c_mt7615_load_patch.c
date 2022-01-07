
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt7615_patch_hdr {int build_date; int hw_sw_ver; } ;
struct TYPE_2__ {int dev; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;
struct firmware {int size; scalar_t__ data; } ;


 int DL_MODE_NEED_RSP ;
 int EAGAIN ;
 int EINVAL ;
 int MCU_PATCH_ADDRESS ;
 int MT7615_ROM_PATCH ;



 int be32_to_cpu (int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,int ) ;
 int mt7615_mcu_init_download (struct mt7615_dev*,int ,int,int ) ;
 int mt7615_mcu_patch_sem_ctrl (struct mt7615_dev*,int) ;
 int mt7615_mcu_send_firmware (struct mt7615_dev*,scalar_t__,int) ;
 int mt7615_mcu_start_patch (struct mt7615_dev*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int ) ;

__attribute__((used)) static int mt7615_load_patch(struct mt7615_dev *dev)
{
 const struct mt7615_patch_hdr *hdr;
 const struct firmware *fw = ((void*)0);
 int len, ret, sem;

 sem = mt7615_mcu_patch_sem_ctrl(dev, 1);
 switch (sem) {
 case 130:
  return 0;
 case 129:
  break;
 default:
  dev_err(dev->mt76.dev, "Failed to get patch semaphore\n");
  return -EAGAIN;
 }

 ret = request_firmware(&fw, MT7615_ROM_PATCH, dev->mt76.dev);
 if (ret)
  goto out;

 if (!fw || !fw->data || fw->size < sizeof(*hdr)) {
  dev_err(dev->mt76.dev, "Invalid firmware\n");
  ret = -EINVAL;
  goto out;
 }

 hdr = (const struct mt7615_patch_hdr *)(fw->data);

 dev_info(dev->mt76.dev, "HW/SW Version: 0x%x, Build Time: %.16s\n",
   be32_to_cpu(hdr->hw_sw_ver), hdr->build_date);

 len = fw->size - sizeof(*hdr);

 ret = mt7615_mcu_init_download(dev, MCU_PATCH_ADDRESS, len,
           DL_MODE_NEED_RSP);
 if (ret) {
  dev_err(dev->mt76.dev, "Download request failed\n");
  goto out;
 }

 ret = mt7615_mcu_send_firmware(dev, fw->data + sizeof(*hdr), len);
 if (ret) {
  dev_err(dev->mt76.dev, "Failed to send firmware to device\n");
  goto out;
 }

 ret = mt7615_mcu_start_patch(dev);
 if (ret)
  dev_err(dev->mt76.dev, "Failed to start patch\n");

out:
 release_firmware(fw);

 sem = mt7615_mcu_patch_sem_ctrl(dev, 0);
 switch (sem) {
 case 128:
  break;
 default:
  ret = -EAGAIN;
  dev_err(dev->mt76.dev, "Failed to release patch semaphore\n");
  break;
 }

 return ret;
}
