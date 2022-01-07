
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enetc_ndev_priv {int num_rx_rings; int num_tx_rings; TYPE_1__* si; } ;
struct TYPE_2__ {int hw; } ;


 int ENETC_RBIER ;
 int ENETC_RBIER_RXTIE ;
 int ENETC_TBIER ;
 int ENETC_TBIER_TXTIE ;
 int enetc_rxbdr_wr (int *,int,int ,int ) ;
 int enetc_txbdr_wr (int *,int,int ,int ) ;

__attribute__((used)) static void enetc_enable_interrupts(struct enetc_ndev_priv *priv)
{
 int i;


 for (i = 0; i < priv->num_rx_rings; i++) {
  enetc_rxbdr_wr(&priv->si->hw, i,
          ENETC_RBIER, ENETC_RBIER_RXTIE);
 }

 for (i = 0; i < priv->num_tx_rings; i++) {
  enetc_txbdr_wr(&priv->si->hw, i,
          ENETC_TBIER, ENETC_TBIER_TXTIE);
 }
}
