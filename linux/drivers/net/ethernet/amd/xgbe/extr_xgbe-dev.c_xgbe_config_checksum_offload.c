
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; } ;


 int NETIF_F_RXCSUM ;
 int xgbe_disable_rx_csum (struct xgbe_prv_data*) ;
 int xgbe_enable_rx_csum (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_config_checksum_offload(struct xgbe_prv_data *pdata)
{
 if (pdata->netdev->features & NETIF_F_RXCSUM)
  xgbe_enable_rx_csum(pdata);
 else
  xgbe_disable_rx_csum(pdata);
}
