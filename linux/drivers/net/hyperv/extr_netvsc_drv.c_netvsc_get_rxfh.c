
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rndis_device {int rss_key; int * rx_table; } ;
struct netvsc_device {struct rndis_device* extension; } ;
struct net_device_context {int nvdev; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 int ETH_RSS_HASH_TOP ;
 int ITAB_NUM ;
 int NETVSC_HASH_KEYLEN ;
 int memcpy (int *,int ,int ) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 struct netvsc_device* rtnl_dereference (int ) ;

__attribute__((used)) static int netvsc_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
      u8 *hfunc)
{
 struct net_device_context *ndc = netdev_priv(dev);
 struct netvsc_device *ndev = rtnl_dereference(ndc->nvdev);
 struct rndis_device *rndis_dev;
 int i;

 if (!ndev)
  return -ENODEV;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 rndis_dev = ndev->extension;
 if (indir) {
  for (i = 0; i < ITAB_NUM; i++)
   indir[i] = rndis_dev->rx_table[i];
 }

 if (key)
  memcpy(key, rndis_dev->rss_key, NETVSC_HASH_KEYLEN);

 return 0;
}
