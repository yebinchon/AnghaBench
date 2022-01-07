
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;


 int EIO ;
 int MT_CFG_LPCR_HOST ;
 int MT_CFG_LPCR_HOST_DRV_OWN ;
 int MT_CFG_LPCR_HOST_FW_OWN ;
 int dev_err (int ,char*) ;
 int mt76_poll_msec (struct mt7615_dev*,int ,int ,int ,int) ;
 int mt76_wr (struct mt7615_dev*,int ,int ) ;

__attribute__((used)) static int mt7615_driver_own(struct mt7615_dev *dev)
{
 mt76_wr(dev, MT_CFG_LPCR_HOST, MT_CFG_LPCR_HOST_DRV_OWN);
 if (!mt76_poll_msec(dev, MT_CFG_LPCR_HOST,
       MT_CFG_LPCR_HOST_FW_OWN, 0, 500)) {
  dev_err(dev->mt76.dev, "Timeout for driver own\n");
  return -EIO;
 }

 return 0;
}
