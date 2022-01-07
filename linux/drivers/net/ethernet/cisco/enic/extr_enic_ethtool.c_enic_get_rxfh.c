
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct enic {int rss_key; } ;


 int ENIC_RSS_LEN ;
 int ETH_RSS_HASH_TOP ;
 int memcpy (int *,int ,int ) ;
 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enic_get_rxfh(struct net_device *netdev, u32 *indir, u8 *hkey,
    u8 *hfunc)
{
 struct enic *enic = netdev_priv(netdev);

 if (hkey)
  memcpy(hkey, enic->rss_key, ENIC_RSS_LEN);

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 return 0;
}
