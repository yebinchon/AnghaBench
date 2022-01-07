
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {scalar_t__ chip_id; int * napi; int emac_irq; int * rx_irqs; int * tx_irqs; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct net_device {int irq; int name; } ;


 int IRQF_SHARED ;
 size_t RAVB_BE ;
 size_t RAVB_NC ;
 scalar_t__ RCAR_GEN2 ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int ravb_be_interrupt ;
 int ravb_dmac_init (struct net_device*) ;
 int ravb_emac_init (struct net_device*) ;
 int ravb_emac_interrupt ;
 int ravb_hook_irq (int ,int ,struct net_device*,struct device*,char*) ;
 int ravb_interrupt ;
 int ravb_multi_interrupt ;
 int ravb_nc_interrupt ;
 int ravb_phy_start (struct net_device*) ;
 int ravb_ptp_init (struct net_device*,struct platform_device*) ;
 int ravb_ptp_stop (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int ravb_open(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);
 struct platform_device *pdev = priv->pdev;
 struct device *dev = &pdev->dev;
 int error;

 napi_enable(&priv->napi[RAVB_BE]);
 napi_enable(&priv->napi[RAVB_NC]);

 if (priv->chip_id == RCAR_GEN2) {
  error = request_irq(ndev->irq, ravb_interrupt, IRQF_SHARED,
        ndev->name, ndev);
  if (error) {
   netdev_err(ndev, "cannot request IRQ\n");
   goto out_napi_off;
  }
 } else {
  error = ravb_hook_irq(ndev->irq, ravb_multi_interrupt, ndev,
          dev, "ch22:multi");
  if (error)
   goto out_napi_off;
  error = ravb_hook_irq(priv->emac_irq, ravb_emac_interrupt, ndev,
          dev, "ch24:emac");
  if (error)
   goto out_free_irq;
  error = ravb_hook_irq(priv->rx_irqs[RAVB_BE], ravb_be_interrupt,
          ndev, dev, "ch0:rx_be");
  if (error)
   goto out_free_irq_emac;
  error = ravb_hook_irq(priv->tx_irqs[RAVB_BE], ravb_be_interrupt,
          ndev, dev, "ch18:tx_be");
  if (error)
   goto out_free_irq_be_rx;
  error = ravb_hook_irq(priv->rx_irqs[RAVB_NC], ravb_nc_interrupt,
          ndev, dev, "ch1:rx_nc");
  if (error)
   goto out_free_irq_be_tx;
  error = ravb_hook_irq(priv->tx_irqs[RAVB_NC], ravb_nc_interrupt,
          ndev, dev, "ch19:tx_nc");
  if (error)
   goto out_free_irq_nc_rx;
 }


 error = ravb_dmac_init(ndev);
 if (error)
  goto out_free_irq_nc_tx;
 ravb_emac_init(ndev);


 if (priv->chip_id == RCAR_GEN2)
  ravb_ptp_init(ndev, priv->pdev);

 netif_tx_start_all_queues(ndev);


 error = ravb_phy_start(ndev);
 if (error)
  goto out_ptp_stop;

 return 0;

out_ptp_stop:

 if (priv->chip_id == RCAR_GEN2)
  ravb_ptp_stop(ndev);
out_free_irq_nc_tx:
 if (priv->chip_id == RCAR_GEN2)
  goto out_free_irq;
 free_irq(priv->tx_irqs[RAVB_NC], ndev);
out_free_irq_nc_rx:
 free_irq(priv->rx_irqs[RAVB_NC], ndev);
out_free_irq_be_tx:
 free_irq(priv->tx_irqs[RAVB_BE], ndev);
out_free_irq_be_rx:
 free_irq(priv->rx_irqs[RAVB_BE], ndev);
out_free_irq_emac:
 free_irq(priv->emac_irq, ndev);
out_free_irq:
 free_irq(ndev->irq, ndev);
out_napi_off:
 napi_disable(&priv->napi[RAVB_NC]);
 napi_disable(&priv->napi[RAVB_BE]);
 return error;
}
