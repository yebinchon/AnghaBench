
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; scalar_t__ phydev; int name; } ;
struct ftgmac100 {scalar_t__ base; int napi; int ndev; scalar_t__ use_ncsi; scalar_t__ cur_speed; scalar_t__ cur_duplex; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ FTGMAC100_OFFSET_IER ;
 scalar_t__ SPEED_100 ;
 int free_irq (int ,struct net_device*) ;
 int ftgmac100_alloc_rings (struct ftgmac100*) ;
 int ftgmac100_free_buffers (struct ftgmac100*) ;
 int ftgmac100_free_rings (struct ftgmac100*) ;
 int ftgmac100_init_all (struct ftgmac100*,int) ;
 int ftgmac100_interrupt ;
 int ftgmac100_poll ;
 int ftgmac100_reset_and_config_mac (struct ftgmac100*) ;
 int iowrite32 (int ,scalar_t__) ;
 int napi_disable (int *) ;
 int ncsi_start_dev (int ) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int netif_napi_del (int *) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_start (scalar_t__) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int ftgmac100_open(struct net_device *netdev)
{
 struct ftgmac100 *priv = netdev_priv(netdev);
 int err;


 err = ftgmac100_alloc_rings(priv);
 if (err) {
  netdev_err(netdev, "Failed to allocate descriptors\n");
  return err;
 }







 if (priv->use_ncsi) {
  priv->cur_duplex = DUPLEX_FULL;
  priv->cur_speed = SPEED_100;
 } else {
  priv->cur_duplex = 0;
  priv->cur_speed = 0;
 }


 err = ftgmac100_reset_and_config_mac(priv);
 if (err)
  goto err_hw;


 netif_napi_add(netdev, &priv->napi, ftgmac100_poll, 64);


 err = request_irq(netdev->irq, ftgmac100_interrupt, 0, netdev->name, netdev);
 if (err) {
  netdev_err(netdev, "failed to request irq %d\n", netdev->irq);
  goto err_irq;
 }


 err = ftgmac100_init_all(priv, 0);
 if (err) {
  netdev_err(netdev, "Failed to allocate packet buffers\n");
  goto err_alloc;
 }

 if (netdev->phydev) {

  phy_start(netdev->phydev);
 } else if (priv->use_ncsi) {

  netif_carrier_on(netdev);


  err = ncsi_start_dev(priv->ndev);
  if (err)
   goto err_ncsi;
 }

 return 0;

 err_ncsi:
 napi_disable(&priv->napi);
 netif_stop_queue(netdev);
 err_alloc:
 ftgmac100_free_buffers(priv);
 free_irq(netdev->irq, netdev);
 err_irq:
 netif_napi_del(&priv->napi);
 err_hw:
 iowrite32(0, priv->base + FTGMAC100_OFFSET_IER);
 ftgmac100_free_rings(priv);
 return err;
}
