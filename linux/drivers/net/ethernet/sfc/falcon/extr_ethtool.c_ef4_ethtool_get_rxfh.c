
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ef4_nic {int rx_indir_table; } ;


 int ETH_RSS_HASH_TOP ;
 int memcpy (int *,int ,int) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ef4_ethtool_get_rxfh(struct net_device *net_dev, u32 *indir, u8 *key,
    u8 *hfunc)
{
 struct ef4_nic *efx = netdev_priv(net_dev);

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;
 if (indir)
  memcpy(indir, efx->rx_indir_table, sizeof(efx->rx_indir_table));
 return 0;
}
