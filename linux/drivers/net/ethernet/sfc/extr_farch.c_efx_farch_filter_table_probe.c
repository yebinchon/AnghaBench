
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_farch_filter_state* filter_state; } ;
struct efx_farch_filter_table {size_t id; unsigned int size; int used_bitmap; struct efx_farch_filter_spec* spec; int step; int offset; } ;
struct efx_farch_filter_state {struct efx_farch_filter_table* table; int lock; } ;
struct efx_farch_filter_spec {scalar_t__ type; } ;


 int BITS_TO_LONGS (scalar_t__) ;
 unsigned int EFX_FARCH_FILTER_SIZE_RX_DEF ;
 unsigned int EFX_FARCH_FILTER_TABLE_COUNT ;
 size_t EFX_FARCH_FILTER_TABLE_RX_DEF ;
 size_t EFX_FARCH_FILTER_TABLE_RX_IP ;
 size_t EFX_FARCH_FILTER_TABLE_RX_MAC ;
 size_t EFX_FARCH_FILTER_TABLE_TX_MAC ;
 scalar_t__ EFX_FARCH_FILTER_UC_DEF ;
 int ENOMEM ;
 int FR_BZ_RX_FILTER_TBL0 ;
 unsigned int FR_BZ_RX_FILTER_TBL0_ROWS ;
 int FR_BZ_RX_FILTER_TBL0_STEP ;
 int FR_CZ_RX_MAC_FILTER_TBL0 ;
 unsigned int FR_CZ_RX_MAC_FILTER_TBL0_ROWS ;
 int FR_CZ_RX_MAC_FILTER_TBL0_STEP ;
 int FR_CZ_TX_MAC_FILTER_TBL0 ;
 unsigned int FR_CZ_TX_MAC_FILTER_TBL0_ROWS ;
 int FR_CZ_TX_MAC_FILTER_TBL0_STEP ;
 int GFP_KERNEL ;
 int __set_bit (unsigned int,int ) ;
 int array_size (int,scalar_t__) ;
 int efx_farch_filter_init_rx_auto (struct efx_nic*,struct efx_farch_filter_spec*) ;
 int efx_farch_filter_push_rx_config (struct efx_nic*) ;
 int efx_farch_filter_table_remove (struct efx_nic*) ;
 int init_rwsem (int *) ;
 int kcalloc (int ,int,int ) ;
 struct efx_farch_filter_state* kzalloc (int,int ) ;
 struct efx_farch_filter_spec* vzalloc (int ) ;

int efx_farch_filter_table_probe(struct efx_nic *efx)
{
 struct efx_farch_filter_state *state;
 struct efx_farch_filter_table *table;
 unsigned table_id;

 state = kzalloc(sizeof(struct efx_farch_filter_state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;
 efx->filter_state = state;
 init_rwsem(&state->lock);

 table = &state->table[EFX_FARCH_FILTER_TABLE_RX_IP];
 table->id = EFX_FARCH_FILTER_TABLE_RX_IP;
 table->offset = FR_BZ_RX_FILTER_TBL0;
 table->size = FR_BZ_RX_FILTER_TBL0_ROWS;
 table->step = FR_BZ_RX_FILTER_TBL0_STEP;

 table = &state->table[EFX_FARCH_FILTER_TABLE_RX_MAC];
 table->id = EFX_FARCH_FILTER_TABLE_RX_MAC;
 table->offset = FR_CZ_RX_MAC_FILTER_TBL0;
 table->size = FR_CZ_RX_MAC_FILTER_TBL0_ROWS;
 table->step = FR_CZ_RX_MAC_FILTER_TBL0_STEP;

 table = &state->table[EFX_FARCH_FILTER_TABLE_RX_DEF];
 table->id = EFX_FARCH_FILTER_TABLE_RX_DEF;
 table->size = EFX_FARCH_FILTER_SIZE_RX_DEF;

 table = &state->table[EFX_FARCH_FILTER_TABLE_TX_MAC];
 table->id = EFX_FARCH_FILTER_TABLE_TX_MAC;
 table->offset = FR_CZ_TX_MAC_FILTER_TBL0;
 table->size = FR_CZ_TX_MAC_FILTER_TBL0_ROWS;
 table->step = FR_CZ_TX_MAC_FILTER_TBL0_STEP;

 for (table_id = 0; table_id < EFX_FARCH_FILTER_TABLE_COUNT; table_id++) {
  table = &state->table[table_id];
  if (table->size == 0)
   continue;
  table->used_bitmap = kcalloc(BITS_TO_LONGS(table->size),
          sizeof(unsigned long),
          GFP_KERNEL);
  if (!table->used_bitmap)
   goto fail;
  table->spec = vzalloc(array_size(sizeof(*table->spec),
       table->size));
  if (!table->spec)
   goto fail;
 }

 table = &state->table[EFX_FARCH_FILTER_TABLE_RX_DEF];
 if (table->size) {

  struct efx_farch_filter_spec *spec;
  unsigned i;

  for (i = 0; i < EFX_FARCH_FILTER_SIZE_RX_DEF; i++) {
   spec = &table->spec[i];
   spec->type = EFX_FARCH_FILTER_UC_DEF + i;
   efx_farch_filter_init_rx_auto(efx, spec);
   __set_bit(i, table->used_bitmap);
  }
 }

 efx_farch_filter_push_rx_config(efx);

 return 0;

fail:
 efx_farch_filter_table_remove(efx);
 return -ENOMEM;
}
