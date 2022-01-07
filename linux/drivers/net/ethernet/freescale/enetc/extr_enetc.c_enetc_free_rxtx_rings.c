
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_ndev_priv {int num_rx_rings; int num_tx_rings; int * tx_ring; int * rx_ring; } ;


 int enetc_free_rx_ring (int ) ;
 int enetc_free_tx_ring (int ) ;

__attribute__((used)) static void enetc_free_rxtx_rings(struct enetc_ndev_priv *priv)
{
 int i;

 for (i = 0; i < priv->num_rx_rings; i++)
  enetc_free_rx_ring(priv->rx_ring[i]);

 for (i = 0; i < priv->num_tx_rings; i++)
  enetc_free_tx_ring(priv->tx_ring[i]);
}
