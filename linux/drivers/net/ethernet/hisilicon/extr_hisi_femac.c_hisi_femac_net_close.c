
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; } ;
struct hisi_femac_priv {int napi; } ;


 int IRQ_ENA_PORT0 ;
 int hisi_femac_free_skb_rings (struct hisi_femac_priv*) ;
 int hisi_femac_irq_disable (struct hisi_femac_priv*,int ) ;
 int napi_disable (int *) ;
 struct hisi_femac_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;

__attribute__((used)) static int hisi_femac_net_close(struct net_device *dev)
{
 struct hisi_femac_priv *priv = netdev_priv(dev);

 hisi_femac_irq_disable(priv, IRQ_ENA_PORT0);

 if (dev->phydev)
  phy_stop(dev->phydev);

 netif_stop_queue(dev);
 napi_disable(&priv->napi);

 hisi_femac_free_skb_rings(priv);

 return 0;
}
