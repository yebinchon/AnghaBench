
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xgbe_prv_data {int rss_key; int * rss_table; } ;
struct net_device {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int DMCH ;
 int ETH_RSS_HASH_TOP ;
 int MAC_RSSDR ;
 int XGMAC_GET_BITS (int ,int ,int ) ;
 int memcpy (int *,int ,int) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static int xgbe_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
    u8 *hfunc)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 unsigned int i;

 if (indir) {
  for (i = 0; i < ARRAY_SIZE(pdata->rss_table); i++)
   indir[i] = XGMAC_GET_BITS(pdata->rss_table[i],
        MAC_RSSDR, DMCH);
 }

 if (key)
  memcpy(key, pdata->rss_key, sizeof(pdata->rss_key));

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 return 0;
}
