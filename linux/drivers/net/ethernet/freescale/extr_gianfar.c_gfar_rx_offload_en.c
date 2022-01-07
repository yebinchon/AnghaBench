
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfar_private {int uses_rxfcb; scalar_t__ rx_filer_enable; scalar_t__ hwts_rx_en; TYPE_1__* ndev; } ;
struct TYPE_2__ {int features; } ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;

__attribute__((used)) static void gfar_rx_offload_en(struct gfar_private *priv)
{

 priv->uses_rxfcb = 0;

 if (priv->ndev->features & (NETIF_F_RXCSUM | NETIF_F_HW_VLAN_CTAG_RX))
  priv->uses_rxfcb = 1;

 if (priv->hwts_rx_en || priv->rx_filer_enable)
  priv->uses_rxfcb = 1;
}
