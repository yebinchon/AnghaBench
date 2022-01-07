
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7615_dev {int ofdm_sensitivity; int cck_sensitivity; int last_cca_adj; } ;


 int MT_WF_PHY_B0_MIN_PRI_PWR ;
 int MT_WF_PHY_B0_PD_CCK (int) ;
 int MT_WF_PHY_B0_PD_CCK_MASK ;
 int MT_WF_PHY_B0_PD_OFDM (int) ;
 int MT_WF_PHY_B0_PD_OFDM_MASK ;
 int MT_WF_PHY_B0_RXTD_CCK_PD ;
 int MT_WF_PHY_B1_MIN_PRI_PWR ;
 int MT_WF_PHY_B1_PD_CCK (int) ;
 int MT_WF_PHY_B1_PD_CCK_MASK ;
 int MT_WF_PHY_B1_PD_OFDM (int) ;
 int MT_WF_PHY_B1_PD_OFDM_MASK ;
 int MT_WF_PHY_B1_RXTD_CCK_PD ;
 int jiffies ;
 int mt76_rmw (struct mt7615_dev*,int ,int ,int ) ;

__attribute__((used)) static void
mt7615_mac_set_default_sensitivity(struct mt7615_dev *dev)
{
 mt76_rmw(dev, MT_WF_PHY_B0_MIN_PRI_PWR,
   MT_WF_PHY_B0_PD_OFDM_MASK,
   MT_WF_PHY_B0_PD_OFDM(0x13c));
 mt76_rmw(dev, MT_WF_PHY_B1_MIN_PRI_PWR,
   MT_WF_PHY_B1_PD_OFDM_MASK,
   MT_WF_PHY_B1_PD_OFDM(0x13c));

 mt76_rmw(dev, MT_WF_PHY_B0_RXTD_CCK_PD,
   MT_WF_PHY_B0_PD_CCK_MASK,
   MT_WF_PHY_B0_PD_CCK(0x92));
 mt76_rmw(dev, MT_WF_PHY_B1_RXTD_CCK_PD,
   MT_WF_PHY_B1_PD_CCK_MASK,
   MT_WF_PHY_B1_PD_CCK(0x92));

 dev->ofdm_sensitivity = -98;
 dev->cck_sensitivity = -110;
 dev->last_cca_adj = jiffies;
}
