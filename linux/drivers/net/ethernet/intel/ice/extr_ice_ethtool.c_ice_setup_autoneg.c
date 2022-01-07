
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int an_info; } ;
struct TYPE_4__ {TYPE_1__ link_info; } ;
struct ice_port_info {TYPE_2__ phy; } ;
struct ice_aqc_set_phy_cfg_data {int caps; } ;
struct ethtool_link_ksettings {int dummy; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int Autoneg ;
 int EINVAL ;
 int ICE_AQ_AN_COMPLETED ;
 int ICE_AQ_PHY_ENA_AUTO_LINK_UPDT ;
 scalar_t__ ethtool_link_ksettings_test_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int netdev_info (struct net_device*,char*) ;
 int supported ;

__attribute__((used)) static int
ice_setup_autoneg(struct ice_port_info *p, struct ethtool_link_ksettings *ks,
    struct ice_aqc_set_phy_cfg_data *config,
    u8 autoneg_enabled, u8 *autoneg_changed,
    struct net_device *netdev)
{
 int err = 0;

 *autoneg_changed = 0;


 if (autoneg_enabled == AUTONEG_ENABLE) {

  if (!(p->phy.link_info.an_info & ICE_AQ_AN_COMPLETED)) {

   if (!ethtool_link_ksettings_test_link_mode(ks,
           supported,
           Autoneg)) {
    netdev_info(netdev, "Autoneg not supported on this phy.\n");
    err = -EINVAL;
   } else {

    config->caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
    *autoneg_changed = 1;
   }
  }
 } else {

  if (p->phy.link_info.an_info & ICE_AQ_AN_COMPLETED) {



   if (ethtool_link_ksettings_test_link_mode(ks,
          supported,
          Autoneg)) {
    netdev_info(netdev, "Autoneg cannot be disabled on this phy\n");
    err = -EINVAL;
   } else {

    config->caps &= ~ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
    *autoneg_changed = 1;
   }
  }
 }

 return err;
}
