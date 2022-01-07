
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_channel {int hw_value; } ;
struct bcma_device {TYPE_1__* bus; } ;
struct b43_wldev {TYPE_2__* dev; } ;
struct TYPE_4__ {struct bcma_device* bdev; } ;
struct TYPE_3__ {int drv_cc; } ;


 int B43_BCMA_CLKCTLST_80211_PLL_REQ ;
 int B43_BCMA_CLKCTLST_80211_PLL_ST ;
 int B43_BCMA_CLKCTLST_PHY_PLL_REQ ;
 int B43_BCMA_CLKCTLST_PHY_PLL_ST ;
 int B43_PHY_HT_BBCFG ;
 int B43_PHY_HT_BBCFG_RSTRX ;
 int b43_mac_switch_freq (struct b43_wldev*,int) ;
 int b43_phy_ht_reset_cca (struct b43_wldev*) ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_wireless_core_phy_pll_reset (struct b43_wldev*) ;
 int bcma_core_pll_ctl (struct bcma_device*,int,int,int) ;
 int bcma_pmu_spuravoid_pllupdate (int *,int) ;

__attribute__((used)) static void b43_phy_ht_spur_avoid(struct b43_wldev *dev,
      struct ieee80211_channel *new_channel)
{
 struct bcma_device *core = dev->dev->bdev;
 int spuravoid = 0;


 if (new_channel->hw_value == 13 || new_channel->hw_value == 14)
  spuravoid = 1;
 bcma_core_pll_ctl(core, B43_BCMA_CLKCTLST_PHY_PLL_REQ, 0, 0);
 bcma_pmu_spuravoid_pllupdate(&core->bus->drv_cc, spuravoid);
 bcma_core_pll_ctl(core,
     B43_BCMA_CLKCTLST_80211_PLL_REQ |
     B43_BCMA_CLKCTLST_PHY_PLL_REQ,
     B43_BCMA_CLKCTLST_80211_PLL_ST |
     B43_BCMA_CLKCTLST_PHY_PLL_ST, 0);

 b43_mac_switch_freq(dev, spuravoid);

 b43_wireless_core_phy_pll_reset(dev);

 if (spuravoid)
  b43_phy_set(dev, B43_PHY_HT_BBCFG, B43_PHY_HT_BBCFG_RSTRX);
 else
  b43_phy_mask(dev, B43_PHY_HT_BBCFG,
    ~B43_PHY_HT_BBCFG_RSTRX & 0xFFFF);

 b43_phy_ht_reset_cca(dev);
}
