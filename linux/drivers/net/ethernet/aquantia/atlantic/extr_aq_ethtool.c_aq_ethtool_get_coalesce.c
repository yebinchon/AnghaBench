
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames; int tx_max_coalesced_frames; int tx_coalesce_usecs; int rx_coalesce_usecs; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {scalar_t__ itr; int tx_itr; int rx_itr; } ;


 scalar_t__ AQ_CFG_INTERRUPT_MODERATION_AUTO ;
 scalar_t__ AQ_CFG_INTERRUPT_MODERATION_ON ;
 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aq_ethtool_get_coalesce(struct net_device *ndev,
       struct ethtool_coalesce *coal)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 struct aq_nic_cfg_s *cfg = aq_nic_get_cfg(aq_nic);

 if (cfg->itr == AQ_CFG_INTERRUPT_MODERATION_ON ||
     cfg->itr == AQ_CFG_INTERRUPT_MODERATION_AUTO) {
  coal->rx_coalesce_usecs = cfg->rx_itr;
  coal->tx_coalesce_usecs = cfg->tx_itr;
  coal->rx_max_coalesced_frames = 0;
  coal->tx_max_coalesced_frames = 0;
 } else {
  coal->rx_coalesce_usecs = 0;
  coal->tx_coalesce_usecs = 0;
  coal->rx_max_coalesced_frames = 1;
  coal->tx_max_coalesced_frames = 1;
 }
 return 0;
}
