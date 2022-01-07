
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct fm10k_intfc {int * rssrk; } ;
typedef int __le32 ;


 int ETH_RSS_HASH_TOP ;
 int FM10K_RSSRK_SIZE ;
 int cpu_to_le32 (int ) ;
 int fm10k_get_reta (struct net_device*,int *) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fm10k_get_rssh(struct net_device *netdev, u32 *indir, u8 *key,
     u8 *hfunc)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);
 int i, err;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 err = fm10k_get_reta(netdev, indir);
 if (err || !key)
  return err;

 for (i = 0; i < FM10K_RSSRK_SIZE; i++, key += 4)
  *(__le32 *)key = cpu_to_le32(interface->rssrk[i]);

 return 0;
}
