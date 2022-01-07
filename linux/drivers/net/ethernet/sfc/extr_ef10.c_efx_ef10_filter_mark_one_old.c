
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct efx_nic {int net_dev; struct efx_ef10_filter_table* filter_state; } ;
struct efx_ef10_filter_table {TYPE_1__* entry; int lock; } ;
struct TYPE_2__ {int spec; } ;


 int EFX_EF10_FILTER_FLAG_AUTO_OLD ;
 scalar_t__ EFX_EF10_FILTER_ID_INVALID ;
 int drv ;
 unsigned int efx_ef10_filter_get_unsafe_id (scalar_t__) ;
 int efx_rwsem_assert_write_locked (int *) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,scalar_t__,unsigned int) ;

__attribute__((used)) static void efx_ef10_filter_mark_one_old(struct efx_nic *efx, uint16_t *id)
{
 struct efx_ef10_filter_table *table = efx->filter_state;
 unsigned int filter_idx;

 efx_rwsem_assert_write_locked(&table->lock);

 if (*id != EFX_EF10_FILTER_ID_INVALID) {
  filter_idx = efx_ef10_filter_get_unsafe_id(*id);
  if (!table->entry[filter_idx].spec)
   netif_dbg(efx, drv, efx->net_dev,
      "marked null spec old %04x:%04x\n", *id,
      filter_idx);
  table->entry[filter_idx].spec |= EFX_EF10_FILTER_FLAG_AUTO_OLD;
  *id = EFX_EF10_FILTER_ID_INVALID;
 }
}
