
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int flags; } ;
struct TYPE_6__ {struct net_device* netdev; } ;
struct hnae3_handle {TYPE_2__* ae_algo; int netdev_flags; TYPE_3__ kinfo; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* restore_vlan_table ) (struct hnae3_handle*) ;} ;


 int IFF_PROMISC ;
 int hns3_enable_vlan_filter (struct net_device*,int) ;
 int hns3_init_mac_addr (struct net_device*,int) ;
 int hns3_recover_hw_addr (struct net_device*) ;
 int hns3_restore_fd_rules (struct net_device*) ;
 int hns3_update_promisc_mode (struct net_device*,int ) ;
 int stub1 (struct hnae3_handle*) ;

__attribute__((used)) static int hns3_reset_notify_restore_enet(struct hnae3_handle *handle)
{
 struct net_device *netdev = handle->kinfo.netdev;
 bool vlan_filter_enable;
 int ret;

 ret = hns3_init_mac_addr(netdev, 0);
 if (ret)
  return ret;

 ret = hns3_recover_hw_addr(netdev);
 if (ret)
  return ret;

 ret = hns3_update_promisc_mode(netdev, handle->netdev_flags);
 if (ret)
  return ret;

 vlan_filter_enable = netdev->flags & IFF_PROMISC ? 0 : 1;
 hns3_enable_vlan_filter(netdev, vlan_filter_enable);

 if (handle->ae_algo->ops->restore_vlan_table)
  handle->ae_algo->ops->restore_vlan_table(handle);

 return hns3_restore_fd_rules(netdev);
}
