
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


 int EOPNOTSUPP ;
 int aq_filters_vlans_update (struct aq_nic_s*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int aq_ndo_vlan_rx_add_vid(struct net_device *ndev, __be16 proto,
      u16 vid)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);

 if (!aq_nic->aq_hw_ops->hw_filter_vlan_set)
  return -EOPNOTSUPP;

 set_bit(vid, aq_nic->active_vlans);

 return aq_filters_vlans_update(aq_nic);
}
