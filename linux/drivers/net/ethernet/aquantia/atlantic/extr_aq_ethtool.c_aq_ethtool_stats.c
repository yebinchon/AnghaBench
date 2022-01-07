
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {int vecs; } ;


 int ARRAY_SIZE (int ) ;
 int aq_ethtool_queue_stat_names ;
 int aq_ethtool_stat_names ;
 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 int aq_nic_get_stats (struct aq_nic_s*,int *) ;
 int memset (int *,int ,int) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static void aq_ethtool_stats(struct net_device *ndev,
        struct ethtool_stats *stats, u64 *data)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 struct aq_nic_cfg_s *cfg = aq_nic_get_cfg(aq_nic);

 memset(data, 0, (ARRAY_SIZE(aq_ethtool_stat_names) +
    ARRAY_SIZE(aq_ethtool_queue_stat_names) *
    cfg->vecs) * sizeof(u64));
 aq_nic_get_stats(aq_nic, data);
}
