
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct link_config {unsigned int pcaps; unsigned int speed_caps; unsigned int acaps; scalar_t__ autoneg; } ;
struct port_info {int tx_chan; TYPE_2__* adapter; struct link_config link_cfg; } ;
struct net_device {int dummy; } ;
struct ethtool_link_settings {scalar_t__ duplex; scalar_t__ autoneg; int speed; } ;
struct TYPE_3__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; struct ethtool_link_settings base; } ;
struct TYPE_4__ {int mbox; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 unsigned int FW_PORT_CAP32_ANEG ;
 unsigned int lmm_to_fw_caps (int ) ;
 struct port_info* netdev_priv (struct net_device*) ;
 unsigned int speed_to_fw_caps (int ) ;
 int t4_link_l1cfg (TYPE_2__*,int ,int ,struct link_config*) ;

__attribute__((used)) static int set_link_ksettings(struct net_device *dev,
       const struct ethtool_link_ksettings *link_ksettings)
{
 struct port_info *pi = netdev_priv(dev);
 struct link_config *lc = &pi->link_cfg;
 const struct ethtool_link_settings *base = &link_ksettings->base;
 struct link_config old_lc;
 unsigned int fw_caps;
 int ret = 0;


 if (base->duplex != DUPLEX_FULL)
  return -EINVAL;

 old_lc = *lc;
 if (!(lc->pcaps & FW_PORT_CAP32_ANEG) ||
     base->autoneg == AUTONEG_DISABLE) {
  fw_caps = speed_to_fw_caps(base->speed);


  if (!(lc->pcaps & fw_caps))
   return -EINVAL;

  lc->speed_caps = fw_caps;
  lc->acaps = fw_caps;
 } else {
  fw_caps =
   lmm_to_fw_caps(link_ksettings->link_modes.advertising);
  if (!(lc->pcaps & fw_caps))
   return -EINVAL;
  lc->speed_caps = 0;
  lc->acaps = fw_caps | FW_PORT_CAP32_ANEG;
 }
 lc->autoneg = base->autoneg;




 ret = t4_link_l1cfg(pi->adapter, pi->adapter->mbox, pi->tx_chan, lc);
 if (ret)
  *lc = old_lc;

 return ret;
}
