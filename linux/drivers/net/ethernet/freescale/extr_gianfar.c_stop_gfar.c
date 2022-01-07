
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct gfar_private {int state; } ;


 int GFAR_DOWN ;
 int disable_napi (struct gfar_private*) ;
 int free_skb_resources (struct gfar_private*) ;
 int gfar_halt (struct gfar_private*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phy_stop (int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

void stop_gfar(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);

 netif_tx_stop_all_queues(dev);

 smp_mb__before_atomic();
 set_bit(GFAR_DOWN, &priv->state);
 smp_mb__after_atomic();

 disable_napi(priv);


 gfar_halt(priv);

 phy_stop(dev->phydev);

 free_skb_resources(priv);
}
