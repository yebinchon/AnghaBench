
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct igc_adapter {int * rss_indir_tbl; } ;


 int ETH_RSS_HASH_TOP ;
 int IGC_RETA_SIZE ;
 struct igc_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igc_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
   u8 *hfunc)
{
 struct igc_adapter *adapter = netdev_priv(netdev);
 int i;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;
 if (!indir)
  return 0;
 for (i = 0; i < IGC_RETA_SIZE; i++)
  indir[i] = adapter->rss_indir_tbl[i];

 return 0;
}
