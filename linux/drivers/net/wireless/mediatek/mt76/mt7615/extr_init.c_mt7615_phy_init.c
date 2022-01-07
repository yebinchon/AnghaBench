
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7615_dev {int dummy; } ;


 int MT_WF_PHY_WF2_RFCTRL0 ;
 int MT_WF_PHY_WF2_RFCTRL0_LPBCN_EN ;
 int mt76_rmw (struct mt7615_dev*,int ,int ,int ) ;

__attribute__((used)) static void mt7615_phy_init(struct mt7615_dev *dev)
{

 mt76_rmw(dev, MT_WF_PHY_WF2_RFCTRL0, MT_WF_PHY_WF2_RFCTRL0_LPBCN_EN,
   MT_WF_PHY_WF2_RFCTRL0_LPBCN_EN);
}
