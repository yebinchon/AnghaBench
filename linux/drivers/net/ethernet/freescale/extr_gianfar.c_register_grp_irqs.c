
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct gfar_private {int device_flags; struct net_device* ndev; } ;
struct gfar_priv_grp {struct gfar_private* priv; } ;
struct TYPE_2__ {int irq; int name; } ;


 int ER ;
 int FSL_GIANFAR_DEV_HAS_MULTI_INTR ;
 int RX ;
 int TX ;
 int enable_irq_wake (int ) ;
 int free_irq (int ,struct gfar_priv_grp*) ;
 int gfar_error ;
 int gfar_interrupt ;
 TYPE_1__* gfar_irq (struct gfar_priv_grp*,int ) ;
 int gfar_receive ;
 int gfar_transmit ;
 int intr ;
 int netif_err (struct gfar_private*,int ,struct net_device*,char*,int ) ;
 int request_irq (int ,int ,int ,int ,struct gfar_priv_grp*) ;

__attribute__((used)) static int register_grp_irqs(struct gfar_priv_grp *grp)
{
 struct gfar_private *priv = grp->priv;
 struct net_device *dev = priv->ndev;
 int err;




 if (priv->device_flags & FSL_GIANFAR_DEV_HAS_MULTI_INTR) {



  err = request_irq(gfar_irq(grp, ER)->irq, gfar_error, 0,
      gfar_irq(grp, ER)->name, grp);
  if (err < 0) {
   netif_err(priv, intr, dev, "Can't get IRQ %d\n",
      gfar_irq(grp, ER)->irq);

   goto err_irq_fail;
  }
  enable_irq_wake(gfar_irq(grp, ER)->irq);

  err = request_irq(gfar_irq(grp, TX)->irq, gfar_transmit, 0,
      gfar_irq(grp, TX)->name, grp);
  if (err < 0) {
   netif_err(priv, intr, dev, "Can't get IRQ %d\n",
      gfar_irq(grp, TX)->irq);
   goto tx_irq_fail;
  }
  err = request_irq(gfar_irq(grp, RX)->irq, gfar_receive, 0,
      gfar_irq(grp, RX)->name, grp);
  if (err < 0) {
   netif_err(priv, intr, dev, "Can't get IRQ %d\n",
      gfar_irq(grp, RX)->irq);
   goto rx_irq_fail;
  }
  enable_irq_wake(gfar_irq(grp, RX)->irq);

 } else {
  err = request_irq(gfar_irq(grp, TX)->irq, gfar_interrupt, 0,
      gfar_irq(grp, TX)->name, grp);
  if (err < 0) {
   netif_err(priv, intr, dev, "Can't get IRQ %d\n",
      gfar_irq(grp, TX)->irq);
   goto err_irq_fail;
  }
  enable_irq_wake(gfar_irq(grp, TX)->irq);
 }

 return 0;

rx_irq_fail:
 free_irq(gfar_irq(grp, TX)->irq, grp);
tx_irq_fail:
 free_irq(gfar_irq(grp, ER)->irq, grp);
err_irq_fail:
 return err;

}
