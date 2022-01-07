
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct efx_nic {int net_dev; int rss_context; struct efx_ef10_filter_table* filter_state; } ;
struct efx_filter_spec {int dummy; } ;
struct efx_ef10_filter_vlan {scalar_t__* default_filters; int vid; scalar_t__* uc; scalar_t__* mc; } ;
struct efx_ef10_filter_table {int dev_mc_count; int dev_uc_count; struct efx_ef10_dev_addr* dev_uc_list; struct efx_ef10_dev_addr* dev_mc_list; } ;
struct efx_ef10_dev_addr {int * addr; } ;
typedef enum efx_filter_flags { ____Placeholder_efx_filter_flags } efx_filter_flags ;


 size_t EFX_EF10_BCAST ;
 scalar_t__ EFX_EF10_FILTER_ID_INVALID ;
 int EFX_FILTER_FLAG_RX_RSS ;
 int EFX_FILTER_PRI_AUTO ;
 int EFX_WARN_ON_PARANOID (int) ;
 int ETH_ALEN ;
 int drv ;
 scalar_t__ efx_ef10_filter_get_unsafe_id (int) ;
 int efx_ef10_filter_insert_locked (struct efx_nic*,struct efx_filter_spec*,int) ;
 int efx_ef10_filter_remove_unsafe (struct efx_nic*,int ,scalar_t__) ;
 int efx_filter_init_rx (struct efx_filter_spec*,int ,int,int ) ;
 int efx_filter_set_eth_local (struct efx_filter_spec*,int ,int *) ;
 scalar_t__ efx_rss_active (int *) ;
 int eth_broadcast_addr (int *) ;
 int netif_info (struct efx_nic*,int ,int ,char*,int) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,int) ;

__attribute__((used)) static int efx_ef10_filter_insert_addr_list(struct efx_nic *efx,
         struct efx_ef10_filter_vlan *vlan,
         bool multicast, bool rollback)
{
 struct efx_ef10_filter_table *table = efx->filter_state;
 struct efx_ef10_dev_addr *addr_list;
 enum efx_filter_flags filter_flags;
 struct efx_filter_spec spec;
 u8 baddr[ETH_ALEN];
 unsigned int i, j;
 int addr_count;
 u16 *ids;
 int rc;

 if (multicast) {
  addr_list = table->dev_mc_list;
  addr_count = table->dev_mc_count;
  ids = vlan->mc;
 } else {
  addr_list = table->dev_uc_list;
  addr_count = table->dev_uc_count;
  ids = vlan->uc;
 }

 filter_flags = efx_rss_active(&efx->rss_context) ? EFX_FILTER_FLAG_RX_RSS : 0;


 for (i = 0; i < addr_count; i++) {
  EFX_WARN_ON_PARANOID(ids[i] != EFX_EF10_FILTER_ID_INVALID);
  efx_filter_init_rx(&spec, EFX_FILTER_PRI_AUTO, filter_flags, 0);
  efx_filter_set_eth_local(&spec, vlan->vid, addr_list[i].addr);
  rc = efx_ef10_filter_insert_locked(efx, &spec, 1);
  if (rc < 0) {
   if (rollback) {
    netif_info(efx, drv, efx->net_dev,
        "efx_ef10_filter_insert failed rc=%d\n",
        rc);

    for (j = 0; j < i; j++) {
     efx_ef10_filter_remove_unsafe(
      efx, EFX_FILTER_PRI_AUTO,
      ids[j]);
     ids[j] = EFX_EF10_FILTER_ID_INVALID;
    }
    return rc;
   } else {

   }
  } else {
   ids[i] = efx_ef10_filter_get_unsafe_id(rc);
  }
 }

 if (multicast && rollback) {

  EFX_WARN_ON_PARANOID(vlan->default_filters[EFX_EF10_BCAST] !=
         EFX_EF10_FILTER_ID_INVALID);
  efx_filter_init_rx(&spec, EFX_FILTER_PRI_AUTO, filter_flags, 0);
  eth_broadcast_addr(baddr);
  efx_filter_set_eth_local(&spec, vlan->vid, baddr);
  rc = efx_ef10_filter_insert_locked(efx, &spec, 1);
  if (rc < 0) {
   netif_warn(efx, drv, efx->net_dev,
       "Broadcast filter insert failed rc=%d\n", rc);

   for (j = 0; j < i; j++) {
    efx_ef10_filter_remove_unsafe(
     efx, EFX_FILTER_PRI_AUTO,
     ids[j]);
    ids[j] = EFX_EF10_FILTER_ID_INVALID;
   }
   return rc;
  } else {
   vlan->default_filters[EFX_EF10_BCAST] =
    efx_ef10_filter_get_unsafe_id(rc);
  }
 }

 return 0;
}
