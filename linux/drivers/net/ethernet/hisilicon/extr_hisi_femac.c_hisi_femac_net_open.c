
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; int dev_addr; } ;
struct hisi_femac_priv {scalar_t__ glb_base; scalar_t__ link_status; int napi; } ;


 int DEF_INT_MASK ;
 scalar_t__ GLB_IRQ_RAW ;
 int IRQ_ENA_ALL ;
 int IRQ_ENA_PORT0 ;
 int IRQ_ENA_PORT0_MASK ;
 int hisi_femac_irq_enable (struct hisi_femac_priv*,int) ;
 int hisi_femac_port_reset (struct hisi_femac_priv*) ;
 int hisi_femac_rx_refill (struct hisi_femac_priv*) ;
 int hisi_femac_set_hw_mac_addr (struct hisi_femac_priv*,int ) ;
 int napi_enable (int *) ;
 struct hisi_femac_priv* netdev_priv (struct net_device*) ;
 int netdev_reset_queue (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int hisi_femac_net_open(struct net_device *dev)
{
 struct hisi_femac_priv *priv = netdev_priv(dev);

 hisi_femac_port_reset(priv);
 hisi_femac_set_hw_mac_addr(priv, dev->dev_addr);
 hisi_femac_rx_refill(priv);

 netif_carrier_off(dev);
 netdev_reset_queue(dev);
 netif_start_queue(dev);
 napi_enable(&priv->napi);

 priv->link_status = 0;
 if (dev->phydev)
  phy_start(dev->phydev);

 writel(IRQ_ENA_PORT0_MASK, priv->glb_base + GLB_IRQ_RAW);
 hisi_femac_irq_enable(priv, IRQ_ENA_ALL | IRQ_ENA_PORT0 | DEF_INT_MASK);

 return 0;
}
