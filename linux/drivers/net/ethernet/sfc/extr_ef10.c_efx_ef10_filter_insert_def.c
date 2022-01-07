
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct efx_nic {int net_dev; int rss_context; struct efx_ef10_nic_data* nic_data; } ;
struct efx_filter_spec {int dummy; } ;
struct efx_ef10_nic_data {int datapath_caps; int workaround_26807; } ;
struct efx_ef10_filter_vlan {int* default_filters; int vid; } ;
typedef enum efx_filter_flags { ____Placeholder_efx_filter_flags } efx_filter_flags ;
typedef enum efx_encap_type { ____Placeholder_efx_encap_type } efx_encap_type ;
typedef enum efx_ef10_default_filters { ____Placeholder_efx_ef10_default_filters } efx_ef10_default_filters ;


 int ARRAY_SIZE (int*) ;
 int BUILD_BUG_ON (int) ;
 size_t EFX_EF10_BCAST ;
 int EFX_EF10_FILTER_ID_INVALID ;
 int EFX_ENCAP_TYPES_MASK ;




 int EFX_FILTER_FLAG_RX_RSS ;
 int EFX_FILTER_PRI_AUTO ;
 int EFX_FILTER_VID_UNSPEC ;
 int EFX_WARN_ON_PARANOID (int) ;
 int EINVAL ;
 int EPERM ;
 int ETH_ALEN ;
 int MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN ;
 int WARN_ON (int) ;
 int drv ;
 void* efx_ef10_filter_get_unsafe_id (int) ;
 int efx_ef10_filter_insert_locked (struct efx_nic*,struct efx_filter_spec*,int) ;
 int efx_ef10_filter_remove_unsafe (struct efx_nic*,int ,int) ;
 int efx_filter_init_rx (struct efx_filter_spec*,int ,int,int ) ;
 int efx_filter_set_encap_type (struct efx_filter_spec*,int) ;
 int efx_filter_set_eth_local (struct efx_filter_spec*,int ,int *) ;
 int efx_filter_set_mc_def (struct efx_filter_spec*) ;
 int efx_filter_set_uc_def (struct efx_filter_spec*) ;
 scalar_t__ efx_rss_active (int *) ;
 int eth_broadcast_addr (int *) ;
 int netif_cond_dbg (struct efx_nic*,int ,int ,int,int ,char*,char const*,char const*,char const*,int) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,int) ;
 int warn ;

__attribute__((used)) static int efx_ef10_filter_insert_def(struct efx_nic *efx,
          struct efx_ef10_filter_vlan *vlan,
          enum efx_encap_type encap_type,
          bool multicast, bool rollback)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 enum efx_filter_flags filter_flags;
 struct efx_filter_spec spec;
 u8 baddr[ETH_ALEN];
 int rc;
 u16 *id;

 filter_flags = efx_rss_active(&efx->rss_context) ? EFX_FILTER_FLAG_RX_RSS : 0;

 efx_filter_init_rx(&spec, EFX_FILTER_PRI_AUTO, filter_flags, 0);

 if (multicast)
  efx_filter_set_mc_def(&spec);
 else
  efx_filter_set_uc_def(&spec);

 if (encap_type) {
  if (nic_data->datapath_caps &
      (1 << MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN))
   efx_filter_set_encap_type(&spec, encap_type);
  else



   return 0;
 }

 if (vlan->vid != EFX_FILTER_VID_UNSPEC)
  efx_filter_set_eth_local(&spec, vlan->vid, ((void*)0));

 rc = efx_ef10_filter_insert_locked(efx, &spec, 1);
 if (rc < 0) {
  const char *um = multicast ? "Multicast" : "Unicast";
  const char *encap_name = "";
  const char *encap_ipv = "";

  if ((encap_type & EFX_ENCAP_TYPES_MASK) ==
      128)
   encap_name = "VXLAN ";
  else if ((encap_type & EFX_ENCAP_TYPES_MASK) ==
    129)
   encap_name = "NVGRE ";
  else if ((encap_type & EFX_ENCAP_TYPES_MASK) ==
    131)
   encap_name = "GENEVE ";
  if (encap_type & 132)
   encap_ipv = "IPv6 ";
  else if (encap_type)
   encap_ipv = "IPv4 ";





  netif_cond_dbg(efx, drv, efx->net_dev,
          rc == -EPERM && (encap_type || !multicast), warn,
          "%s%s%s mismatch filter insert failed rc=%d\n",
          encap_name, encap_ipv, um, rc);
 } else if (multicast) {

  static enum efx_ef10_default_filters map[] = {
   [130] = 142,
   [128] = 136,
   [129] = 141,
   [131] = 146,
   [128 | 132] =
    134,
   [129 | 132] =
    139,
   [131 | 132] =
    144,
  };


  BUILD_BUG_ON(EFX_EF10_BCAST != 0);
  if (encap_type >= ARRAY_SIZE(map) || map[encap_type] == 0) {
   WARN_ON(1);
   return -EINVAL;
  }

  id = &vlan->default_filters[map[encap_type]];

  EFX_WARN_ON_PARANOID(*id != EFX_EF10_FILTER_ID_INVALID);
  *id = efx_ef10_filter_get_unsafe_id(rc);
  if (!nic_data->workaround_26807 && !encap_type) {

   efx_filter_init_rx(&spec, EFX_FILTER_PRI_AUTO,
        filter_flags, 0);
   eth_broadcast_addr(baddr);
   efx_filter_set_eth_local(&spec, vlan->vid, baddr);
   rc = efx_ef10_filter_insert_locked(efx, &spec, 1);
   if (rc < 0) {
    netif_warn(efx, drv, efx->net_dev,
        "Broadcast filter insert failed rc=%d\n",
        rc);
    if (rollback) {

     efx_ef10_filter_remove_unsafe(
       efx, EFX_FILTER_PRI_AUTO,
       *id);
     *id = EFX_EF10_FILTER_ID_INVALID;
     return rc;
    }
   } else {
    EFX_WARN_ON_PARANOID(
     vlan->default_filters[EFX_EF10_BCAST] !=
     EFX_EF10_FILTER_ID_INVALID);
    vlan->default_filters[EFX_EF10_BCAST] =
     efx_ef10_filter_get_unsafe_id(rc);
   }
  }
  rc = 0;
 } else {

  static enum efx_ef10_default_filters map[] = {
   [130] = 137,
   [128] = 135,
   [129] = 140,
   [131] = 145,
   [128 | 132] =
    133,
   [129 | 132] =
    138,
   [131 | 132] =
    143,
  };


  BUILD_BUG_ON(EFX_EF10_BCAST != 0);
  if (encap_type >= ARRAY_SIZE(map) || map[encap_type] == 0) {
   WARN_ON(1);
   return -EINVAL;
  }

  id = &vlan->default_filters[map[encap_type]];
  EFX_WARN_ON_PARANOID(*id != EFX_EF10_FILTER_ID_INVALID);
  *id = rc;
  rc = 0;
 }
 return rc;
}
