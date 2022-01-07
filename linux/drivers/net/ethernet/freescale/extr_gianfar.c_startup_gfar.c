
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct gfar_private {int oldduplex; scalar_t__ oldspeed; scalar_t__ oldlink; int state; } ;


 int GFAR_DOWN ;
 int clear_bit (int ,int *) ;
 int enable_napi (struct gfar_private*) ;
 int gfar_alloc_skb_resources (struct net_device*) ;
 int gfar_init_tx_rx_base (struct gfar_private*) ;
 int gfar_mac_reset (struct gfar_private*) ;
 int gfar_start (struct gfar_private*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 int phy_start (int ) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

int startup_gfar(struct net_device *ndev)
{
 struct gfar_private *priv = netdev_priv(ndev);
 int err;

 gfar_mac_reset(priv);

 err = gfar_alloc_skb_resources(ndev);
 if (err)
  return err;

 gfar_init_tx_rx_base(priv);

 smp_mb__before_atomic();
 clear_bit(GFAR_DOWN, &priv->state);
 smp_mb__after_atomic();


 gfar_start(priv);


 priv->oldlink = 0;
 priv->oldspeed = 0;
 priv->oldduplex = -1;

 phy_start(ndev->phydev);

 enable_napi(priv);

 netif_tx_wake_all_queues(ndev);

 return 0;
}
