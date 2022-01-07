
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enetc_ndev_priv {int num_tx_rings; int num_rx_rings; int * rx_ring; TYPE_1__* si; int * tx_ring; } ;
struct TYPE_2__ {int hw; } ;


 int enetc_setup_rxbdr (int *,int ) ;
 int enetc_setup_txbdr (int *,int ) ;

__attribute__((used)) static void enetc_setup_bdrs(struct enetc_ndev_priv *priv)
{
 int i;

 for (i = 0; i < priv->num_tx_rings; i++)
  enetc_setup_txbdr(&priv->si->hw, priv->tx_ring[i]);

 for (i = 0; i < priv->num_rx_rings; i++)
  enetc_setup_rxbdr(&priv->si->hw, priv->rx_ring[i]);
}
