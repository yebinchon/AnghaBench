
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_PHY_HT_BBCFG ;
 int B43_PHY_HT_BBCFG_RSTCCA ;
 int B43_PHY_HT_RF_SEQ_TRIG_RST2RX ;
 int b43_phy_force_clock (struct b43_wldev*,int) ;
 int b43_phy_ht_force_rf_sequence (struct b43_wldev*,int ) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void b43_phy_ht_reset_cca(struct b43_wldev *dev)
{
 u16 bbcfg;

 b43_phy_force_clock(dev, 1);
 bbcfg = b43_phy_read(dev, B43_PHY_HT_BBCFG);
 b43_phy_write(dev, B43_PHY_HT_BBCFG, bbcfg | B43_PHY_HT_BBCFG_RSTCCA);
 udelay(1);
 b43_phy_write(dev, B43_PHY_HT_BBCFG, bbcfg & ~B43_PHY_HT_BBCFG_RSTCCA);
 b43_phy_force_clock(dev, 0);

 b43_phy_ht_force_rf_sequence(dev, B43_PHY_HT_RF_SEQ_TRIG_RST2RX);
}
