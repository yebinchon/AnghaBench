
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct net_device {int dummy; } ;
struct i40e_vsi {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;


 int ENOMEM ;
 scalar_t__ ETH_RSS_HASH_TOP ;
 int GFP_KERNEL ;
 size_t I40E_HLUT_ARRAY_SIZE ;
 int i40e_get_rss (struct i40e_vsi*,scalar_t__*,scalar_t__*,size_t) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kzalloc (size_t,int ) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
    u8 *hfunc)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 u8 *lut, *seed = ((void*)0);
 int ret;
 u16 i;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 if (!indir)
  return 0;

 seed = key;
 lut = kzalloc(I40E_HLUT_ARRAY_SIZE, GFP_KERNEL);
 if (!lut)
  return -ENOMEM;
 ret = i40e_get_rss(vsi, seed, lut, I40E_HLUT_ARRAY_SIZE);
 if (ret)
  goto out;
 for (i = 0; i < I40E_HLUT_ARRAY_SIZE; i++)
  indir[i] = (u32)(lut[i]);

out:
 kfree(lut);

 return ret;
}
