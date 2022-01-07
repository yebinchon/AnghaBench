
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_can_priv {TYPE_1__* dev; int napi; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int free_irq (int ,struct net_device*) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct pch_can_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int pch_can_init (struct pch_can_priv*) ;
 int pch_can_interrupt ;
 int pch_can_release (struct pch_can_priv*) ;
 int pch_can_start (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int pch_can_open(struct net_device *ndev)
{
 struct pch_can_priv *priv = netdev_priv(ndev);
 int retval;


 retval = request_irq(priv->dev->irq, pch_can_interrupt, IRQF_SHARED,
        ndev->name, ndev);
 if (retval) {
  netdev_err(ndev, "request_irq failed.\n");
  goto req_irq_err;
 }


 retval = open_candev(ndev);
 if (retval) {
  netdev_err(ndev, "open_candev() failed %d\n", retval);
  goto err_open_candev;
 }

 pch_can_init(priv);
 pch_can_start(ndev);
 napi_enable(&priv->napi);
 netif_start_queue(ndev);

 return 0;

err_open_candev:
 free_irq(priv->dev->irq, ndev);
req_irq_err:
 pch_can_release(priv);

 return retval;
}
