
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int filter_sem; } ;
struct efx_ef10_filter_vlan {scalar_t__* uc; scalar_t__* mc; scalar_t__* default_filters; int list; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ EFX_EF10_FILTER_ID_INVALID ;
 unsigned int EFX_EF10_NUM_DEFAULT_FILTERS ;
 int EFX_FILTER_PRI_AUTO ;
 int efx_ef10_filter_remove_unsafe (struct efx_nic*,int ,scalar_t__) ;
 int efx_rwsem_assert_write_locked (int *) ;
 int kfree (struct efx_ef10_filter_vlan*) ;
 int list_del (int *) ;

__attribute__((used)) static void efx_ef10_filter_del_vlan_internal(struct efx_nic *efx,
           struct efx_ef10_filter_vlan *vlan)
{
 unsigned int i;


 if (!efx_rwsem_assert_write_locked(&efx->filter_sem))
  return;

 list_del(&vlan->list);

 for (i = 0; i < ARRAY_SIZE(vlan->uc); i++)
  efx_ef10_filter_remove_unsafe(efx, EFX_FILTER_PRI_AUTO,
           vlan->uc[i]);
 for (i = 0; i < ARRAY_SIZE(vlan->mc); i++)
  efx_ef10_filter_remove_unsafe(efx, EFX_FILTER_PRI_AUTO,
           vlan->mc[i]);
 for (i = 0; i < EFX_EF10_NUM_DEFAULT_FILTERS; i++)
  if (vlan->default_filters[i] != EFX_EF10_FILTER_ID_INVALID)
   efx_ef10_filter_remove_unsafe(efx, EFX_FILTER_PRI_AUTO,
            vlan->default_filters[i]);

 kfree(vlan);
}
