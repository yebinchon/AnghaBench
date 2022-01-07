
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ice_vsi {int rss_table_size; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; int flags; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ ETH_RSS_HASH_TOP ;
 int GFP_KERNEL ;
 int ICE_FLAG_RSS_ENA ;
 int devm_kfree (int *,scalar_t__*) ;
 scalar_t__* devm_kzalloc (int *,int,int ) ;
 scalar_t__ ice_get_rss (struct ice_vsi*,scalar_t__*,scalar_t__*,int) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int
ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 struct ice_pf *pf = vsi->back;
 int ret = 0, i;
 u8 *lut;

 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 if (!indir)
  return 0;

 if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {

  netdev_warn(netdev, "RSS is not configured on this VSI!\n");
  return -EIO;
 }

 lut = devm_kzalloc(&pf->pdev->dev, vsi->rss_table_size, GFP_KERNEL);
 if (!lut)
  return -ENOMEM;

 if (ice_get_rss(vsi, key, lut, vsi->rss_table_size)) {
  ret = -EIO;
  goto out;
 }

 for (i = 0; i < vsi->rss_table_size; i++)
  indir[i] = (u32)(lut[i]);

out:
 devm_kfree(&pf->pdev->dev, lut);
 return ret;
}
