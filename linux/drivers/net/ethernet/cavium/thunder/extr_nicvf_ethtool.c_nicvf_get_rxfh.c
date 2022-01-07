
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct nicvf_rss_info {int rss_size; int key; int * ind_tbl; } ;
struct nicvf {struct nicvf_rss_info rss_info; } ;
struct net_device {int dummy; } ;


 int ETH_RSS_HASH_TOP ;
 int RSS_HASH_KEY_SIZE ;
 int memcpy (int *,int ,int) ;
 struct nicvf* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nicvf_get_rxfh(struct net_device *dev, u32 *indir, u8 *hkey,
     u8 *hfunc)
{
 struct nicvf *nic = netdev_priv(dev);
 struct nicvf_rss_info *rss = &nic->rss_info;
 int idx;

 if (indir) {
  for (idx = 0; idx < rss->rss_size; idx++)
   indir[idx] = rss->ind_tbl[idx];
 }

 if (hkey)
  memcpy(hkey, rss->key, RSS_HASH_KEY_SIZE * sizeof(u64));

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 return 0;
}
