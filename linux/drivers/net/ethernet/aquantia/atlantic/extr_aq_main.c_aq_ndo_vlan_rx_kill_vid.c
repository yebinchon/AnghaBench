
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct aq_nic_s {int active_vlans; TYPE_1__* aq_hw_ops; } ;
typedef int __be16 ;
struct TYPE_2__ {int hw_filter_vlan_set; } ;


 int ENOENT ;
 int EOPNOTSUPP ;
 int aq_del_fvlan_by_vlan (struct aq_nic_s*,int ) ;
 int aq_filters_vlans_update (struct aq_nic_s*) ;
 int clear_bit (int ,int ) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aq_ndo_vlan_rx_kill_vid(struct net_device *ndev, __be16 proto,
       u16 vid)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);

 if (!aq_nic->aq_hw_ops->hw_filter_vlan_set)
  return -EOPNOTSUPP;

 clear_bit(vid, aq_nic->active_vlans);

 if (-ENOENT == aq_del_fvlan_by_vlan(aq_nic, vid))
  return aq_filters_vlans_update(aq_nic);

 return 0;
}
