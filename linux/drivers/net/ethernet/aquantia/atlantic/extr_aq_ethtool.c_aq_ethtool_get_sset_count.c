
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {int vecs; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;

 int aq_ethtool_queue_stat_names ;
 int aq_ethtool_stat_names ;
 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aq_ethtool_get_sset_count(struct net_device *ndev, int stringset)
{
 int ret = 0;
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 struct aq_nic_cfg_s *cfg = aq_nic_get_cfg(aq_nic);

 switch (stringset) {
 case 128:
  ret = ARRAY_SIZE(aq_ethtool_stat_names) +
   cfg->vecs * ARRAY_SIZE(aq_ethtool_queue_stat_names);
  break;
 default:
  ret = -EOPNOTSUPP;
 }
 return ret;
}
