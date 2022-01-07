
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rss_info {int rss_hkey; int * rss_queue; } ;
struct net_device {int dummy; } ;
struct be_adapter {struct rss_info rss_info; } ;


 int ETH_RSS_HASH_TOP ;
 int RSS_HASH_KEY_LEN ;
 int RSS_INDIR_TABLE_LEN ;
 int memcpy (int *,int ,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_get_rxfh(struct net_device *netdev, u32 *indir, u8 *hkey,
         u8 *hfunc)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 int i;
 struct rss_info *rss = &adapter->rss_info;

 if (indir) {
  for (i = 0; i < RSS_INDIR_TABLE_LEN; i++)
   indir[i] = rss->rss_queue[i];
 }

 if (hkey)
  memcpy(hkey, rss->rss_hkey, RSS_HASH_KEY_LEN);

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 return 0;
}
