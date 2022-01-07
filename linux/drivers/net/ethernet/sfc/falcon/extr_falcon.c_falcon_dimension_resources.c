
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int rx_dc_base; int tx_dc_base; } ;



__attribute__((used)) static int falcon_dimension_resources(struct ef4_nic *efx)
{
 efx->rx_dc_base = 0x20000;
 efx->tx_dc_base = 0x26000;
 return 0;
}
