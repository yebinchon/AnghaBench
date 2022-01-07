
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {int txfid; int nicbuf_size; struct hermes hw; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* allocate ) (struct hermes*,int ,int *) ;} ;


 int EIO ;
 int TX_NICBUF_SIZE_BUG ;
 int dev_warn (struct device*,char*,char*) ;
 int stub1 (struct hermes*,int ,int *) ;
 int stub2 (struct hermes*,int ,int *) ;

int orinoco_hw_allocate_fid(struct orinoco_private *priv)
{
 struct device *dev = priv->dev;
 struct hermes *hw = &priv->hw;
 int err;

 err = hw->ops->allocate(hw, priv->nicbuf_size, &priv->txfid);
 if (err == -EIO && priv->nicbuf_size > TX_NICBUF_SIZE_BUG) {

  priv->nicbuf_size = TX_NICBUF_SIZE_BUG;
  err = hw->ops->allocate(hw, priv->nicbuf_size, &priv->txfid);

  dev_warn(dev, "Firmware ALLOC bug detected "
    "(old Symbol firmware?). Work around %s\n",
    err ? "failed!" : "ok.");
 }

 return err;
}
