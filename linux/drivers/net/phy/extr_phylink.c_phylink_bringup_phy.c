
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct phylink_link_state {int advertising; int interface; } ;
struct TYPE_6__ {int advertising; int interface; } ;
struct phylink {int supported; int state_mutex; TYPE_3__ link_config; struct phy_device* phydev; } ;
struct TYPE_4__ {int dev; } ;
struct phy_device {int advertising; int lock; TYPE_2__* drv; TYPE_1__ mdio; int phy_link_change; struct phylink* phylink; int supported; } ;
typedef int config ;
struct TYPE_5__ {int name; } ;


 int Asym_Pause ;
 int Pause ;
 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 int dev_name (int *) ;
 int linkmode_copy (int ,int ) ;
 int memset (struct phylink_link_state*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ phy_interrupt_is_valid (struct phy_device*) ;
 int phy_request_interrupt (struct phy_device*) ;
 int phylink_dbg (struct phylink*,char*,int ,int ,int ,int ) ;
 int phylink_info (struct phylink*,char*,int ,int ) ;
 int phylink_phy_change ;
 int phylink_set (int ,int ) ;
 scalar_t__ phylink_test (int ,int ) ;
 int phylink_validate (struct phylink*,int ,struct phylink_link_state*) ;
 int supported ;

__attribute__((used)) static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy)
{
 struct phylink_link_state config;
 __ETHTOOL_DECLARE_LINK_MODE_MASK(supported);
 int ret;

 memset(&config, 0, sizeof(config));
 linkmode_copy(supported, phy->supported);
 linkmode_copy(config.advertising, phy->advertising);
 config.interface = pl->link_config.interface;
 if (phylink_test(supported, Pause))
  phylink_set(config.advertising, Pause);
 if (phylink_test(supported, Asym_Pause))
  phylink_set(config.advertising, Asym_Pause);

 ret = phylink_validate(pl, supported, &config);
 if (ret)
  return ret;

 phy->phylink = pl;
 phy->phy_link_change = phylink_phy_change;

 phylink_info(pl,
       "PHY [%s] driver [%s]\n", dev_name(&phy->mdio.dev),
       phy->drv->name);

 mutex_lock(&phy->lock);
 mutex_lock(&pl->state_mutex);
 pl->phydev = phy;
 linkmode_copy(pl->supported, supported);
 linkmode_copy(pl->link_config.advertising, config.advertising);


 linkmode_copy(phy->advertising, config.advertising);
 mutex_unlock(&pl->state_mutex);
 mutex_unlock(&phy->lock);

 phylink_dbg(pl,
      "phy: setting supported %*pb advertising %*pb\n",
      __ETHTOOL_LINK_MODE_MASK_NBITS, pl->supported,
      __ETHTOOL_LINK_MODE_MASK_NBITS, phy->advertising);

 if (phy_interrupt_is_valid(phy))
  phy_request_interrupt(phy);

 return 0;
}
