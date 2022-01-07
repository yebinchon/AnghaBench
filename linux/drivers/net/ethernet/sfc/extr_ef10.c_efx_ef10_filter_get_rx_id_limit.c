
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {struct efx_ef10_filter_table* filter_state; } ;
struct efx_ef10_filter_table {int rx_match_count; } ;


 int HUNT_FILTER_TBL_ROWS ;

__attribute__((used)) static u32 efx_ef10_filter_get_rx_id_limit(struct efx_nic *efx)
{
 struct efx_ef10_filter_table *table = efx->filter_state;

 return table->rx_match_count * HUNT_FILTER_TBL_ROWS * 2;
}
