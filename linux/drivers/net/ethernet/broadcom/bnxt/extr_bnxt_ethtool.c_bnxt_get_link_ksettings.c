
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_link_settings {int phy_address; int port; int speed; void* duplex; int autoneg; } ;
struct ethtool_link_ksettings {struct ethtool_link_settings base; } ;
struct bnxt_link_info {scalar_t__ phy_link_status; int duplex; int req_duplex; scalar_t__ media_type; int phy_addr; int req_link_speed; int link_speed; scalar_t__ autoneg; } ;
struct bnxt {int link_lock; struct bnxt_link_info link_info; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int Autoneg ;
 int BNXT_LINK_DUPLEX_FULL ;
 scalar_t__ BNXT_LINK_LINK ;
 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 void* DUPLEX_UNKNOWN ;
 int FIBRE ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_NONE ;
 scalar_t__ PORT_PHY_QCFG_RESP_MEDIA_TYPE_DAC ;
 scalar_t__ PORT_PHY_QCFG_RESP_MEDIA_TYPE_FIBRE ;
 scalar_t__ PORT_PHY_QCFG_RESP_MEDIA_TYPE_TP ;
 int PORT_TP ;
 int TP ;
 int advertising ;
 int bnxt_fw_to_ethtool_advertised_spds (struct bnxt_link_info*,struct ethtool_link_ksettings*) ;
 int bnxt_fw_to_ethtool_lp_adv (struct bnxt_link_info*,struct ethtool_link_ksettings*) ;
 int bnxt_fw_to_ethtool_speed (int ) ;
 int bnxt_fw_to_ethtool_support_spds (struct bnxt_link_info*,struct ethtool_link_ksettings*) ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int supported ;

__attribute__((used)) static int bnxt_get_link_ksettings(struct net_device *dev,
       struct ethtool_link_ksettings *lk_ksettings)
{
 struct bnxt *bp = netdev_priv(dev);
 struct bnxt_link_info *link_info = &bp->link_info;
 struct ethtool_link_settings *base = &lk_ksettings->base;
 u32 ethtool_speed;

 ethtool_link_ksettings_zero_link_mode(lk_ksettings, supported);
 mutex_lock(&bp->link_lock);
 bnxt_fw_to_ethtool_support_spds(link_info, lk_ksettings);

 ethtool_link_ksettings_zero_link_mode(lk_ksettings, advertising);
 if (link_info->autoneg) {
  bnxt_fw_to_ethtool_advertised_spds(link_info, lk_ksettings);
  ethtool_link_ksettings_add_link_mode(lk_ksettings,
           advertising, Autoneg);
  base->autoneg = AUTONEG_ENABLE;
  if (link_info->phy_link_status == BNXT_LINK_LINK)
   bnxt_fw_to_ethtool_lp_adv(link_info, lk_ksettings);
  ethtool_speed = bnxt_fw_to_ethtool_speed(link_info->link_speed);
  if (!netif_carrier_ok(dev))
   base->duplex = DUPLEX_UNKNOWN;
  else if (link_info->duplex & BNXT_LINK_DUPLEX_FULL)
   base->duplex = DUPLEX_FULL;
  else
   base->duplex = DUPLEX_HALF;
 } else {
  base->autoneg = AUTONEG_DISABLE;
  ethtool_speed =
   bnxt_fw_to_ethtool_speed(link_info->req_link_speed);
  base->duplex = DUPLEX_HALF;
  if (link_info->req_duplex == BNXT_LINK_DUPLEX_FULL)
   base->duplex = DUPLEX_FULL;
 }
 base->speed = ethtool_speed;

 base->port = PORT_NONE;
 if (link_info->media_type == PORT_PHY_QCFG_RESP_MEDIA_TYPE_TP) {
  base->port = PORT_TP;
  ethtool_link_ksettings_add_link_mode(lk_ksettings, supported,
           TP);
  ethtool_link_ksettings_add_link_mode(lk_ksettings, advertising,
           TP);
 } else {
  ethtool_link_ksettings_add_link_mode(lk_ksettings, supported,
           FIBRE);
  ethtool_link_ksettings_add_link_mode(lk_ksettings, advertising,
           FIBRE);

  if (link_info->media_type == PORT_PHY_QCFG_RESP_MEDIA_TYPE_DAC)
   base->port = PORT_DA;
  else if (link_info->media_type ==
    PORT_PHY_QCFG_RESP_MEDIA_TYPE_FIBRE)
   base->port = PORT_FIBRE;
 }
 base->phy_address = link_info->phy_addr;
 mutex_unlock(&bp->link_lock);

 return 0;
}
