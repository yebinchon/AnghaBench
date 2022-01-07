
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct net_device {int dummy; } ;
struct i40e_vsi {scalar_t__* rss_lut_user; int rss_size; void* rss_hkey_user; struct i40e_pf* back; } ;
struct i40e_pf {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 int GFP_KERNEL ;
 size_t I40E_HKEY_ARRAY_SIZE ;
 size_t I40E_HLUT_ARRAY_SIZE ;
 int i40e_config_rss (struct i40e_vsi*,scalar_t__*,scalar_t__*,size_t) ;
 int i40e_fill_rss_lut (struct i40e_pf*,scalar_t__*,size_t,int ) ;
 void* kzalloc (size_t,int ) ;
 int memcpy (void*,scalar_t__ const*,size_t) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_set_rxfh(struct net_device *netdev, const u32 *indir,
    const u8 *key, const u8 hfunc)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;
 u8 *seed = ((void*)0);
 u16 i;

 if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
  return -EOPNOTSUPP;

 if (key) {
  if (!vsi->rss_hkey_user) {
   vsi->rss_hkey_user = kzalloc(I40E_HKEY_ARRAY_SIZE,
           GFP_KERNEL);
   if (!vsi->rss_hkey_user)
    return -ENOMEM;
  }
  memcpy(vsi->rss_hkey_user, key, I40E_HKEY_ARRAY_SIZE);
  seed = vsi->rss_hkey_user;
 }
 if (!vsi->rss_lut_user) {
  vsi->rss_lut_user = kzalloc(I40E_HLUT_ARRAY_SIZE, GFP_KERNEL);
  if (!vsi->rss_lut_user)
   return -ENOMEM;
 }


 if (indir)
  for (i = 0; i < I40E_HLUT_ARRAY_SIZE; i++)
   vsi->rss_lut_user[i] = (u8)(indir[i]);
 else
  i40e_fill_rss_lut(pf, vsi->rss_lut_user, I40E_HLUT_ARRAY_SIZE,
      vsi->rss_size);

 return i40e_config_rss(vsi, seed, vsi->rss_lut_user,
          I40E_HLUT_ARRAY_SIZE);
}
