
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct bcm_sysport_priv {int is_lite; int napi; } ;


 int INTRL2_0_RDMA_MBDONE ;
 int INTRL2_0_TDMA_MBDONE_MASK ;
 int INTRL2_0_TX_RING_FULL ;
 int bcm_sysport_dim_work ;
 int bcm_sysport_init_dim (struct bcm_sysport_priv*,int ) ;
 int bcm_sysport_init_rx_coalesce (struct bcm_sysport_priv*) ;
 int intrl2_0_mask_clear (struct bcm_sysport_priv*,int) ;
 int intrl2_1_mask_clear (struct bcm_sysport_priv*,int) ;
 int napi_enable (int *) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int phy_start (int ) ;

__attribute__((used)) static void bcm_sysport_netif_start(struct net_device *dev)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);


 bcm_sysport_init_dim(priv, bcm_sysport_dim_work);
 bcm_sysport_init_rx_coalesce(priv);
 napi_enable(&priv->napi);


 intrl2_0_mask_clear(priv, INTRL2_0_RDMA_MBDONE | INTRL2_0_TX_RING_FULL);

 phy_start(dev->phydev);


 if (!priv->is_lite)
  intrl2_1_mask_clear(priv, 0xffffffff);
 else
  intrl2_0_mask_clear(priv, INTRL2_0_TDMA_MBDONE_MASK);
}
