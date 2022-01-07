
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;


 int ixgbe_rss_indir_tbl_entries (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ixgbe_rss_indir_size(struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 return ixgbe_rss_indir_tbl_entries(adapter);
}
