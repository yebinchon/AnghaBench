
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
typedef enum ef4_filter_priority { ____Placeholder_ef4_filter_priority } ef4_filter_priority ;


 int EF4_FARCH_FILTER_TABLE_RX_DEF ;
 int EF4_FARCH_FILTER_TABLE_RX_IP ;
 int EF4_FARCH_FILTER_TABLE_RX_MAC ;
 int ef4_farch_filter_table_clear (struct ef4_nic*,int ,int) ;

int ef4_farch_filter_clear_rx(struct ef4_nic *efx,
          enum ef4_filter_priority priority)
{
 ef4_farch_filter_table_clear(efx, EF4_FARCH_FILTER_TABLE_RX_IP,
         priority);
 ef4_farch_filter_table_clear(efx, EF4_FARCH_FILTER_TABLE_RX_MAC,
         priority);
 ef4_farch_filter_table_clear(efx, EF4_FARCH_FILTER_TABLE_RX_DEF,
         priority);
 return 0;
}
