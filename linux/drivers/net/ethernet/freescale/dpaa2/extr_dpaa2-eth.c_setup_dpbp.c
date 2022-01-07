
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct fsl_mc_device {int mc_handle; TYPE_3__ obj_desc; } ;
struct dpbp_attr {int bpid; } ;
struct dpaa2_eth_priv {int mc_io; int bpid; struct fsl_mc_device* dpbp_dev; TYPE_2__* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int ENXIO ;
 int EPROBE_DEFER ;
 int FSL_MC_POOL_DPBP ;
 int dev_err (struct device*,char*) ;
 int dpbp_close (int ,int ,int ) ;
 int dpbp_disable (int ,int ,int ) ;
 int dpbp_enable (int ,int ,int ) ;
 int dpbp_get_attributes (int ,int ,int ,struct dpbp_attr*) ;
 int dpbp_open (int ,int ,int ,int *) ;
 int dpbp_reset (int ,int ,int ) ;
 int fsl_mc_object_allocate (int ,int ,struct fsl_mc_device**) ;
 int fsl_mc_object_free (struct fsl_mc_device*) ;
 int to_fsl_mc_device (struct device*) ;

__attribute__((used)) static int setup_dpbp(struct dpaa2_eth_priv *priv)
{
 int err;
 struct fsl_mc_device *dpbp_dev;
 struct device *dev = priv->net_dev->dev.parent;
 struct dpbp_attr dpbp_attrs;

 err = fsl_mc_object_allocate(to_fsl_mc_device(dev), FSL_MC_POOL_DPBP,
         &dpbp_dev);
 if (err) {
  if (err == -ENXIO)
   err = -EPROBE_DEFER;
  else
   dev_err(dev, "DPBP device allocation failed\n");
  return err;
 }

 priv->dpbp_dev = dpbp_dev;

 err = dpbp_open(priv->mc_io, 0, priv->dpbp_dev->obj_desc.id,
   &dpbp_dev->mc_handle);
 if (err) {
  dev_err(dev, "dpbp_open() failed\n");
  goto err_open;
 }

 err = dpbp_reset(priv->mc_io, 0, dpbp_dev->mc_handle);
 if (err) {
  dev_err(dev, "dpbp_reset() failed\n");
  goto err_reset;
 }

 err = dpbp_enable(priv->mc_io, 0, dpbp_dev->mc_handle);
 if (err) {
  dev_err(dev, "dpbp_enable() failed\n");
  goto err_enable;
 }

 err = dpbp_get_attributes(priv->mc_io, 0, dpbp_dev->mc_handle,
      &dpbp_attrs);
 if (err) {
  dev_err(dev, "dpbp_get_attributes() failed\n");
  goto err_get_attr;
 }
 priv->bpid = dpbp_attrs.bpid;

 return 0;

err_get_attr:
 dpbp_disable(priv->mc_io, 0, dpbp_dev->mc_handle);
err_enable:
err_reset:
 dpbp_close(priv->mc_io, 0, dpbp_dev->mc_handle);
err_open:
 fsl_mc_object_free(dpbp_dev);

 return err;
}
