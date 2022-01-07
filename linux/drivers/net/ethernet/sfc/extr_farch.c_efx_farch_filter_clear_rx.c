
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;


 int EFX_FARCH_FILTER_TABLE_RX_DEF ;
 int EFX_FARCH_FILTER_TABLE_RX_IP ;
 int EFX_FARCH_FILTER_TABLE_RX_MAC ;
 int efx_farch_filter_table_clear (struct efx_nic*,int ,int) ;

int efx_farch_filter_clear_rx(struct efx_nic *efx,
          enum efx_filter_priority priority)
{
 efx_farch_filter_table_clear(efx, EFX_FARCH_FILTER_TABLE_RX_IP,
         priority);
 efx_farch_filter_table_clear(efx, EFX_FARCH_FILTER_TABLE_RX_MAC,
         priority);
 efx_farch_filter_table_clear(efx, EFX_FARCH_FILTER_TABLE_RX_DEF,
         priority);
 return 0;
}
