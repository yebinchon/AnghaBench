
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_ef10_filter_table* filter_state; } ;
struct efx_ef10_filter_vlan {int * default_filters; int * mc; int * uc; } ;
struct efx_ef10_filter_table {unsigned int dev_uc_count; unsigned int dev_mc_count; } ;


 unsigned int EFX_EF10_NUM_DEFAULT_FILTERS ;
 int efx_ef10_filter_mark_one_old (struct efx_nic*,int *) ;

__attribute__((used)) static void _efx_ef10_filter_vlan_mark_old(struct efx_nic *efx,
        struct efx_ef10_filter_vlan *vlan)
{
 struct efx_ef10_filter_table *table = efx->filter_state;
 unsigned int i;

 for (i = 0; i < table->dev_uc_count; i++)
  efx_ef10_filter_mark_one_old(efx, &vlan->uc[i]);
 for (i = 0; i < table->dev_mc_count; i++)
  efx_ef10_filter_mark_one_old(efx, &vlan->mc[i]);
 for (i = 0; i < EFX_EF10_NUM_DEFAULT_FILTERS; i++)
  efx_ef10_filter_mark_one_old(efx, &vlan->default_filters[i]);
}
