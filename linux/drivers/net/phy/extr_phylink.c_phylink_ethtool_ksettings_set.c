
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phylink_link_state {scalar_t__ duplex; int an_enabled; scalar_t__ speed; int interface; int advertising; } ;
struct phylink {scalar_t__ link_an_mode; int state_mutex; struct phylink_link_state link_config; int phylink_disable_state; scalar_t__ phydev; int supported; } ;
struct phy_setting {scalar_t__ duplex; scalar_t__ speed; } ;
struct TYPE_4__ {scalar_t__ autoneg; scalar_t__ duplex; scalar_t__ speed; } ;
struct TYPE_3__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;


 int ASSERT_RTNL () ;
 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_UNKNOWN ;
 int EINVAL ;
 int ETHTOOL_LINK_MODE_Autoneg_BIT ;
 scalar_t__ MLO_AN_FIXED ;
 int PHYLINK_DISABLE_STOPPED ;
 scalar_t__ SPEED_UNKNOWN ;
 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int linkmode_and (int ,int ,int ) ;
 int linkmode_copy (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_ethtool_ksettings_set (scalar_t__,struct ethtool_link_ksettings*) ;
 struct phy_setting* phy_lookup_setting (scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ phylink_is_empty_linkmode (int ) ;
 int phylink_mac_an_restart (struct phylink*) ;
 int phylink_mac_config (struct phylink*,struct phylink_link_state*) ;
 scalar_t__ phylink_validate (struct phylink*,int ,struct phylink_link_state*) ;
 int support ;
 int test_bit (int ,int *) ;

int phylink_ethtool_ksettings_set(struct phylink *pl,
      const struct ethtool_link_ksettings *kset)
{
 __ETHTOOL_DECLARE_LINK_MODE_MASK(support);
 struct ethtool_link_ksettings our_kset;
 struct phylink_link_state config;
 int ret;

 ASSERT_RTNL();

 if (kset->base.autoneg != AUTONEG_DISABLE &&
     kset->base.autoneg != AUTONEG_ENABLE)
  return -EINVAL;

 linkmode_copy(support, pl->supported);
 config = pl->link_config;


 linkmode_and(config.advertising, kset->link_modes.advertising,
       support);


 if (kset->base.autoneg == AUTONEG_DISABLE) {
  const struct phy_setting *s;




  s = phy_lookup_setting(kset->base.speed, kset->base.duplex,
           support, 0);
  if (!s)
   return -EINVAL;




  if (pl->link_an_mode == MLO_AN_FIXED &&
      (s->speed != pl->link_config.speed ||
       s->duplex != pl->link_config.duplex))
   return -EINVAL;

  config.speed = s->speed;
  config.duplex = s->duplex;
  config.an_enabled = 0;

  __clear_bit(ETHTOOL_LINK_MODE_Autoneg_BIT, config.advertising);
 } else {

  if (pl->link_an_mode == MLO_AN_FIXED)
   return -EINVAL;

  config.speed = SPEED_UNKNOWN;
  config.duplex = DUPLEX_UNKNOWN;
  config.an_enabled = 1;

  __set_bit(ETHTOOL_LINK_MODE_Autoneg_BIT, config.advertising);
 }

 if (phylink_validate(pl, support, &config))
  return -EINVAL;


 if (config.an_enabled && phylink_is_empty_linkmode(config.advertising))
  return -EINVAL;

 our_kset = *kset;
 linkmode_copy(our_kset.link_modes.advertising, config.advertising);
 our_kset.base.speed = config.speed;
 our_kset.base.duplex = config.duplex;


 if (pl->phydev) {
  ret = phy_ethtool_ksettings_set(pl->phydev, &our_kset);
  if (ret)
   return ret;
 }

 mutex_lock(&pl->state_mutex);

 linkmode_copy(pl->link_config.advertising, our_kset.link_modes.advertising);
 pl->link_config.interface = config.interface;
 pl->link_config.speed = our_kset.base.speed;
 pl->link_config.duplex = our_kset.base.duplex;
 pl->link_config.an_enabled = our_kset.base.autoneg != AUTONEG_DISABLE;

 if (!test_bit(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state)) {
  phylink_mac_config(pl, &pl->link_config);
  phylink_mac_an_restart(pl);
 }
 mutex_unlock(&pl->state_mutex);

 return 0;
}
