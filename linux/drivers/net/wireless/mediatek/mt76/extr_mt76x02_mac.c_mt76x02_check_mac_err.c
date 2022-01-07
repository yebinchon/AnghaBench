
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int BIT (int) ;
 int MT_MAC_SYS_CTRL ;
 int MT_MAC_SYS_CTRL_ENABLE_RX ;
 int MT_MAC_SYS_CTRL_ENABLE_TX ;
 int MT_MAC_SYS_CTRL_RESET_CSR ;
 int dev_err (int ,char*) ;
 int mt76_rr (struct mt76x02_dev*,int) ;
 int mt76_set (struct mt76x02_dev*,int ,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void mt76x02_check_mac_err(struct mt76x02_dev *dev)
{
 u32 val = mt76_rr(dev, 0x10f4);

 if (!(val & BIT(29)) || !(val & (BIT(7) | BIT(5))))
  return;

 dev_err(dev->mt76.dev, "mac specific condition occurred\n");

 mt76_set(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_RESET_CSR);
 udelay(10);
 mt76_wr(dev, MT_MAC_SYS_CTRL,
  MT_MAC_SYS_CTRL_ENABLE_TX | MT_MAC_SYS_CTRL_ENABLE_RX);
}
