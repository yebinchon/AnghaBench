
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {struct ef4_farch_filter_state* filter_state; } ;
struct ef4_farch_filter_table {size_t id; scalar_t__ size; int used_bitmap; struct ef4_farch_filter_spec* spec; int step; int offset; } ;
struct ef4_farch_filter_state {struct ef4_farch_filter_table* table; } ;
struct ef4_farch_filter_spec {scalar_t__ type; } ;


 int BITS_TO_LONGS (scalar_t__) ;
 unsigned int EF4_FARCH_FILTER_SIZE_RX_DEF ;
 unsigned int EF4_FARCH_FILTER_TABLE_COUNT ;
 size_t EF4_FARCH_FILTER_TABLE_RX_DEF ;
 size_t EF4_FARCH_FILTER_TABLE_RX_IP ;
 scalar_t__ EF4_FARCH_FILTER_UC_DEF ;
 scalar_t__ EF4_REV_FALCON_B0 ;
 int ENOMEM ;
 int FR_BZ_RX_FILTER_TBL0 ;
 scalar_t__ FR_BZ_RX_FILTER_TBL0_ROWS ;
 int FR_BZ_RX_FILTER_TBL0_STEP ;
 int GFP_KERNEL ;
 int __set_bit (unsigned int,int ) ;
 int array_size (int,scalar_t__) ;
 int ef4_farch_filter_init_rx_auto (struct ef4_nic*,struct ef4_farch_filter_spec*) ;
 int ef4_farch_filter_push_rx_config (struct ef4_nic*) ;
 int ef4_farch_filter_table_remove (struct ef4_nic*) ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int kcalloc (int ,int,int ) ;
 struct ef4_farch_filter_state* kzalloc (int,int ) ;
 struct ef4_farch_filter_spec* vzalloc (int ) ;

int ef4_farch_filter_table_probe(struct ef4_nic *efx)
{
 struct ef4_farch_filter_state *state;
 struct ef4_farch_filter_table *table;
 unsigned table_id;

 state = kzalloc(sizeof(struct ef4_farch_filter_state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;
 efx->filter_state = state;

 if (ef4_nic_rev(efx) >= EF4_REV_FALCON_B0) {
  table = &state->table[EF4_FARCH_FILTER_TABLE_RX_IP];
  table->id = EF4_FARCH_FILTER_TABLE_RX_IP;
  table->offset = FR_BZ_RX_FILTER_TBL0;
  table->size = FR_BZ_RX_FILTER_TBL0_ROWS;
  table->step = FR_BZ_RX_FILTER_TBL0_STEP;
 }

 for (table_id = 0; table_id < EF4_FARCH_FILTER_TABLE_COUNT; table_id++) {
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

 table = &state->table[EF4_FARCH_FILTER_TABLE_RX_DEF];
 if (table->size) {

  struct ef4_farch_filter_spec *spec;
  unsigned i;

  for (i = 0; i < EF4_FARCH_FILTER_SIZE_RX_DEF; i++) {
   spec = &table->spec[i];
   spec->type = EF4_FARCH_FILTER_UC_DEF + i;
   ef4_farch_filter_init_rx_auto(efx, spec);
   __set_bit(i, table->used_bitmap);
  }
 }

 ef4_farch_filter_push_rx_config(efx);

 return 0;

fail:
 ef4_farch_filter_table_remove(efx);
 return -ENOMEM;
}
