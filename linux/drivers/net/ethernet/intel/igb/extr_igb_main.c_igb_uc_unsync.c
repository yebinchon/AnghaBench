
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; } ;


 int igb_del_mac_filter (struct igb_adapter*,unsigned char const*,int ) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_uc_unsync(struct net_device *netdev, const unsigned char *addr)
{
 struct igb_adapter *adapter = netdev_priv(netdev);

 igb_del_mac_filter(adapter, addr, adapter->vfs_allocated_count);

 return 0;
}
