
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;


 int VMDQ_P (int ) ;
 int ixgbe_del_mac_filter (struct ixgbe_adapter*,unsigned char const*,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_uc_unsync(struct net_device *netdev, const unsigned char *addr)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 ixgbe_del_mac_filter(adapter, addr, VMDQ_P(0));

 return 0;
}
