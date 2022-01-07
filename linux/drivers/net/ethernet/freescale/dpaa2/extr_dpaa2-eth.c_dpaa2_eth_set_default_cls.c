
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpaa2_eth_priv {int rx_cls_enabled; TYPE_2__* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DPAA2_ETH_DIST_ALL ;
 int EOPNOTSUPP ;
 int dev_dbg (struct device*,char*) ;
 int dpaa2_eth_fs_enabled (struct dpaa2_eth_priv*) ;
 int dpaa2_eth_fs_mask_enabled (struct dpaa2_eth_priv*) ;
 scalar_t__ dpaa2_eth_has_legacy_dist (struct dpaa2_eth_priv*) ;
 int dpaa2_eth_hash_enabled (struct dpaa2_eth_priv*) ;
 int dpaa2_eth_set_cls (TYPE_2__*,int ) ;

__attribute__((used)) static int dpaa2_eth_set_default_cls(struct dpaa2_eth_priv *priv)
{
 struct device *dev = priv->net_dev->dev.parent;
 int err;


 if (dpaa2_eth_has_legacy_dist(priv)) {
  dev_dbg(dev, "Rx cls not supported by current MC version\n");
  return -EOPNOTSUPP;
 }

 if (!dpaa2_eth_fs_enabled(priv)) {
  dev_dbg(dev, "Rx cls disabled in DPNI options\n");
  return -EOPNOTSUPP;
 }

 if (!dpaa2_eth_hash_enabled(priv)) {
  dev_dbg(dev, "Rx cls disabled for single queue DPNIs\n");
  return -EOPNOTSUPP;
 }





 if (!dpaa2_eth_fs_mask_enabled(priv))
  goto out;

 err = dpaa2_eth_set_cls(priv->net_dev, DPAA2_ETH_DIST_ALL);
 if (err)
  return err;

out:
 priv->rx_cls_enabled = 1;

 return 0;
}
