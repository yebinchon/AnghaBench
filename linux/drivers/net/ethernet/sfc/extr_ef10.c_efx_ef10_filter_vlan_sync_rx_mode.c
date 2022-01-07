
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_ef10_nic_data* nic_data; struct efx_ef10_filter_table* filter_state; } ;
struct efx_ef10_nic_data {scalar_t__ workaround_26807; } ;
struct efx_ef10_filter_vlan {scalar_t__ vid; } ;
struct efx_ef10_filter_table {int vlan_filter; scalar_t__ mc_promisc_last; scalar_t__ mc_promisc; int mc_overflow; scalar_t__ uc_promisc; } ;


 int EFX_ENCAP_FLAG_IPV6 ;
 int EFX_ENCAP_TYPE_GENEVE ;
 int EFX_ENCAP_TYPE_NONE ;
 int EFX_ENCAP_TYPE_NVGRE ;
 int EFX_ENCAP_TYPE_VXLAN ;
 scalar_t__ EFX_FILTER_VID_UNSPEC ;
 scalar_t__ efx_ef10_filter_insert_addr_list (struct efx_nic*,struct efx_ef10_filter_vlan*,int,int) ;
 scalar_t__ efx_ef10_filter_insert_def (struct efx_nic*,struct efx_ef10_filter_vlan*,int,int,int) ;
 int efx_ef10_filter_remove_old (struct efx_nic*) ;

__attribute__((used)) static void efx_ef10_filter_vlan_sync_rx_mode(struct efx_nic *efx,
           struct efx_ef10_filter_vlan *vlan)
{
 struct efx_ef10_filter_table *table = efx->filter_state;
 struct efx_ef10_nic_data *nic_data = efx->nic_data;




 if ((vlan->vid == EFX_FILTER_VID_UNSPEC) == table->vlan_filter)
  return;


 if (table->uc_promisc) {
  efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_NONE,
        0, 0);
  efx_ef10_filter_insert_addr_list(efx, vlan, 0, 0);
 } else {




  if (efx_ef10_filter_insert_addr_list(efx, vlan, 0, 0))
   efx_ef10_filter_insert_def(efx, vlan,
         EFX_ENCAP_TYPE_NONE,
         0, 0);
 }
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_VXLAN,
       0, 0);
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_VXLAN |
           EFX_ENCAP_FLAG_IPV6,
       0, 0);
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_NVGRE,
       0, 0);
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_NVGRE |
           EFX_ENCAP_FLAG_IPV6,
       0, 0);
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_GENEVE,
       0, 0);
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_GENEVE |
           EFX_ENCAP_FLAG_IPV6,
       0, 0);





 if (nic_data->workaround_26807 &&
     table->mc_promisc_last != table->mc_promisc)
  efx_ef10_filter_remove_old(efx);
 if (table->mc_promisc) {
  if (nic_data->workaround_26807) {



   if (efx_ef10_filter_insert_def(efx, vlan,
             EFX_ENCAP_TYPE_NONE,
             1, 1)) {

    efx_ef10_filter_remove_old(efx);
    efx_ef10_filter_insert_addr_list(efx, vlan,
         1, 0);
   }
  } else {




   efx_ef10_filter_insert_def(efx, vlan,
         EFX_ENCAP_TYPE_NONE,
         1, 0);
   if (!table->mc_overflow)
    efx_ef10_filter_insert_addr_list(efx, vlan,
         1, 0);
  }
 } else {





  if (efx_ef10_filter_insert_addr_list(efx, vlan, 1, 1)) {

   if (nic_data->workaround_26807)
    efx_ef10_filter_remove_old(efx);
   if (efx_ef10_filter_insert_def(efx, vlan,
             EFX_ENCAP_TYPE_NONE,
             1, 1))
    efx_ef10_filter_insert_addr_list(efx, vlan,
         1, 0);
  }
 }
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_VXLAN,
       1, 0);
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_VXLAN |
           EFX_ENCAP_FLAG_IPV6,
       1, 0);
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_NVGRE,
       1, 0);
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_NVGRE |
           EFX_ENCAP_FLAG_IPV6,
       1, 0);
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_GENEVE,
       1, 0);
 efx_ef10_filter_insert_def(efx, vlan, EFX_ENCAP_TYPE_GENEVE |
           EFX_ENCAP_FLAG_IPV6,
       1, 0);
}
