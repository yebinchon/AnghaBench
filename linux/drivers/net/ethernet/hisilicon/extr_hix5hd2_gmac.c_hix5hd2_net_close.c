
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; } ;
struct hix5hd2_priv {int mac_core_clk; int mac_ifc_clk; int napi; } ;


 int clk_disable_unprepare (int ) ;
 int hix5hd2_free_dma_desc_rings (struct hix5hd2_priv*) ;
 int hix5hd2_irq_disable (struct hix5hd2_priv*) ;
 int hix5hd2_port_disable (struct hix5hd2_priv*) ;
 int napi_disable (int *) ;
 struct hix5hd2_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;
 int phy_stop (scalar_t__) ;

__attribute__((used)) static int hix5hd2_net_close(struct net_device *dev)
{
 struct hix5hd2_priv *priv = netdev_priv(dev);

 hix5hd2_port_disable(priv);
 hix5hd2_irq_disable(priv);
 napi_disable(&priv->napi);
 netif_stop_queue(dev);
 hix5hd2_free_dma_desc_rings(priv);

 if (dev->phydev) {
  phy_stop(dev->phydev);
  phy_disconnect(dev->phydev);
 }

 clk_disable_unprepare(priv->mac_ifc_clk);
 clk_disable_unprepare(priv->mac_core_clk);

 return 0;
}
