
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlgmac_pdata {TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; } ;


 int NETIF_F_RXCSUM ;
 int xlgmac_disable_rx_csum (struct xlgmac_pdata*) ;
 int xlgmac_enable_rx_csum (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_config_checksum_offload(struct xlgmac_pdata *pdata)
{
 if (pdata->netdev->features & NETIF_F_RXCSUM)
  xlgmac_enable_rx_csum(pdata);
 else
  xlgmac_disable_rx_csum(pdata);
}
