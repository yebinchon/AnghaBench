
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
struct efx_farch_filter_table {scalar_t__ offset; scalar_t__ used; unsigned int step; scalar_t__ id; int * search_limit; int * spec; int used_bitmap; } ;
typedef int efx_oword_t ;


 int BUG_ON (int) ;
 scalar_t__ EFX_FARCH_FILTER_TABLE_TX_MAC ;
 int EFX_WARN_ON_PARANOID (int) ;
 int __clear_bit (unsigned int,int ) ;
 int efx_farch_filter_push_rx_config (struct efx_nic*) ;
 int efx_farch_filter_push_tx_limits (struct efx_nic*) ;
 int efx_writeo (struct efx_nic*,int *,scalar_t__) ;
 int memset (int *,int ,int) ;
 int test_bit (unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
efx_farch_filter_table_clear_entry(struct efx_nic *efx,
       struct efx_farch_filter_table *table,
       unsigned int filter_idx)
{
 static efx_oword_t filter;

 EFX_WARN_ON_PARANOID(!test_bit(filter_idx, table->used_bitmap));
 BUG_ON(table->offset == 0);

 __clear_bit(filter_idx, table->used_bitmap);
 --table->used;
 memset(&table->spec[filter_idx], 0, sizeof(table->spec[0]));

 efx_writeo(efx, &filter, table->offset + table->step * filter_idx);







 if (unlikely(table->used == 0)) {
  memset(table->search_limit, 0, sizeof(table->search_limit));
  if (table->id == EFX_FARCH_FILTER_TABLE_TX_MAC)
   efx_farch_filter_push_tx_limits(efx);
  else
   efx_farch_filter_push_rx_config(efx);
 }
}
