
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int id; } ;
struct device {int dummy; } ;
struct fsl_mc_device {int mc_handle; int mc_io; TYPE_1__ obj_desc; struct device dev; } ;
struct dpaa2_eth_priv {int mc_token; int mc_io; int cls_rules; int dpni_attrs; int dpni_ver_minor; int dpni_ver_major; } ;
struct dpaa2_eth_cls_rule {int dummy; } ;


 int DPNI_VER_MAJOR ;
 int DPNI_VER_MINOR ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,...) ;
 struct net_device* dev_get_drvdata (struct device*) ;
 int devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ dpaa2_eth_cmp_dpni_ver (struct dpaa2_eth_priv*,int ,int ) ;
 int dpaa2_eth_fs_count (struct dpaa2_eth_priv*) ;
 scalar_t__ dpaa2_eth_has_pause_support (struct dpaa2_eth_priv*) ;
 int dpni_close (int ,int ,int ) ;
 int dpni_get_api_version (int ,int ,int *,int *) ;
 int dpni_get_attributes (int ,int ,int ,int *) ;
 int dpni_open (int ,int ,int ,int *) ;
 int dpni_reset (int ,int ,int ) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int set_buffer_layout (struct dpaa2_eth_priv*) ;
 int set_enqueue_mode (struct dpaa2_eth_priv*) ;
 int set_pause (struct dpaa2_eth_priv*) ;

__attribute__((used)) static int setup_dpni(struct fsl_mc_device *ls_dev)
{
 struct device *dev = &ls_dev->dev;
 struct dpaa2_eth_priv *priv;
 struct net_device *net_dev;
 int err;

 net_dev = dev_get_drvdata(dev);
 priv = netdev_priv(net_dev);


 err = dpni_open(priv->mc_io, 0, ls_dev->obj_desc.id, &priv->mc_token);
 if (err) {
  dev_err(dev, "dpni_open() failed\n");
  return err;
 }


 err = dpni_get_api_version(priv->mc_io, 0, &priv->dpni_ver_major,
       &priv->dpni_ver_minor);
 if (err) {
  dev_err(dev, "dpni_get_api_version() failed\n");
  goto close;
 }
 if (dpaa2_eth_cmp_dpni_ver(priv, DPNI_VER_MAJOR, DPNI_VER_MINOR) < 0) {
  dev_err(dev, "DPNI version %u.%u not supported, need >= %u.%u\n",
   priv->dpni_ver_major, priv->dpni_ver_minor,
   DPNI_VER_MAJOR, DPNI_VER_MINOR);
  err = -ENOTSUPP;
  goto close;
 }

 ls_dev->mc_io = priv->mc_io;
 ls_dev->mc_handle = priv->mc_token;

 err = dpni_reset(priv->mc_io, 0, priv->mc_token);
 if (err) {
  dev_err(dev, "dpni_reset() failed\n");
  goto close;
 }

 err = dpni_get_attributes(priv->mc_io, 0, priv->mc_token,
      &priv->dpni_attrs);
 if (err) {
  dev_err(dev, "dpni_get_attributes() failed (err=%d)\n", err);
  goto close;
 }

 err = set_buffer_layout(priv);
 if (err)
  goto close;

 set_enqueue_mode(priv);


 if (dpaa2_eth_has_pause_support(priv)) {
  err = set_pause(priv);
  if (err)
   goto close;
 }

 priv->cls_rules = devm_kzalloc(dev, sizeof(struct dpaa2_eth_cls_rule) *
           dpaa2_eth_fs_count(priv), GFP_KERNEL);
 if (!priv->cls_rules)
  goto close;

 return 0;

close:
 dpni_close(priv->mc_io, 0, priv->mc_token);

 return err;
}
