
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
struct ef4_farch_filter_table {scalar_t__ offset; scalar_t__ used; unsigned int step; scalar_t__ id; int * search_limit; int * spec; int used_bitmap; } ;
typedef int ef4_oword_t ;


 int BUG_ON (int) ;
 scalar_t__ EF4_FARCH_FILTER_TABLE_TX_MAC ;
 int EF4_WARN_ON_PARANOID (int) ;
 int __clear_bit (unsigned int,int ) ;
 int ef4_farch_filter_push_rx_config (struct ef4_nic*) ;
 int ef4_farch_filter_push_tx_limits (struct ef4_nic*) ;
 int ef4_writeo (struct ef4_nic*,int *,scalar_t__) ;
 int memset (int *,int ,int) ;
 int test_bit (unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ef4_farch_filter_table_clear_entry(struct ef4_nic *efx,
       struct ef4_farch_filter_table *table,
       unsigned int filter_idx)
{
 static ef4_oword_t filter;

 EF4_WARN_ON_PARANOID(!test_bit(filter_idx, table->used_bitmap));
 BUG_ON(table->offset == 0);

 __clear_bit(filter_idx, table->used_bitmap);
 --table->used;
 memset(&table->spec[filter_idx], 0, sizeof(table->spec[0]));

 ef4_writeo(efx, &filter, table->offset + table->step * filter_idx);







 if (unlikely(table->used == 0)) {
  memset(table->search_limit, 0, sizeof(table->search_limit));
  if (table->id == EF4_FARCH_FILTER_TABLE_TX_MAC)
   ef4_farch_filter_push_tx_limits(efx);
  else
   ef4_farch_filter_push_rx_config(efx);
 }
}
