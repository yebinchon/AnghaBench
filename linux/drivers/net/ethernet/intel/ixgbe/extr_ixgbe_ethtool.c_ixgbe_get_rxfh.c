
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int rss_key; } ;


 int ETH_RSS_HASH_TOP ;
 int ixgbe_get_reta (struct ixgbe_adapter*,int *) ;
 int ixgbe_get_rxfh_key_size (struct net_device*) ;
 int memcpy (int *,int ,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
     u8 *hfunc)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 if (indir)
  ixgbe_get_reta(adapter, indir);

 if (key)
  memcpy(key, adapter->rss_key, ixgbe_get_rxfh_key_size(netdev));

 return 0;
}
