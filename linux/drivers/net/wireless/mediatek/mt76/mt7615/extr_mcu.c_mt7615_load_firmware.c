
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int dev; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;


 int EIO ;
 int FIELD_PREP (int ,int ) ;
 int FW_STATE_CR4_RDY ;
 scalar_t__ FW_STATE_FW_DOWNLOAD ;
 int MT_TOP_MISC2 ;
 int MT_TOP_MISC2_FW_STATE ;
 int MT_TXQ_FWDL ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int mt7615_load_patch (struct mt7615_dev*) ;
 int mt7615_load_ram (struct mt7615_dev*) ;
 scalar_t__ mt76_get_field (struct mt7615_dev*,int ,int ) ;
 int mt76_poll_msec (struct mt7615_dev*,int ,int ,int ,int) ;
 int mt76_queue_tx_cleanup (struct mt7615_dev*,int ,int) ;

__attribute__((used)) static int mt7615_load_firmware(struct mt7615_dev *dev)
{
 int ret;
 u32 val;

 val = mt76_get_field(dev, MT_TOP_MISC2, MT_TOP_MISC2_FW_STATE);

 if (val != FW_STATE_FW_DOWNLOAD) {
  dev_err(dev->mt76.dev, "Firmware is not ready for download\n");
  return -EIO;
 }

 ret = mt7615_load_patch(dev);
 if (ret)
  return ret;

 ret = mt7615_load_ram(dev);
 if (ret)
  return ret;

 if (!mt76_poll_msec(dev, MT_TOP_MISC2, MT_TOP_MISC2_FW_STATE,
       FIELD_PREP(MT_TOP_MISC2_FW_STATE,
           FW_STATE_CR4_RDY), 500)) {
  dev_err(dev->mt76.dev, "Timeout for initializing firmware\n");
  return -EIO;
 }

 mt76_queue_tx_cleanup(dev, MT_TXQ_FWDL, 0);

 dev_dbg(dev->mt76.dev, "Firmware init done\n");

 return 0;
}
