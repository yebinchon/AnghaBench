
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int fixed_features; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int vport_id; } ;


 int EVB_PORT_ID_ASSIGNED ;
 int MC_CMD_VPORT_ALLOC_IN_FLAG_VLAN_RESTRICT_LBN ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int efx_ef10_vadaptor_alloc (struct efx_nic*,int ) ;
 int efx_ef10_vadaptor_free (struct efx_nic*,int ) ;
 int efx_ef10_vadaptor_query (struct efx_nic*,int ,int*,int *,int *) ;

__attribute__((used)) static int efx_ef10_vadaptor_alloc_set_features(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 u32 port_flags;
 int rc;

 rc = efx_ef10_vadaptor_alloc(efx, nic_data->vport_id);
 if (rc)
  goto fail_vadaptor_alloc;

 rc = efx_ef10_vadaptor_query(efx, nic_data->vport_id,
         &port_flags, ((void*)0), ((void*)0));
 if (rc)
  goto fail_vadaptor_query;

 if (port_flags &
     (1 << MC_CMD_VPORT_ALLOC_IN_FLAG_VLAN_RESTRICT_LBN))
  efx->fixed_features |= NETIF_F_HW_VLAN_CTAG_FILTER;
 else
  efx->fixed_features &= ~NETIF_F_HW_VLAN_CTAG_FILTER;

 return 0;

fail_vadaptor_query:
 efx_ef10_vadaptor_free(efx, EVB_PORT_ID_ASSIGNED);
fail_vadaptor_alloc:
 return rc;
}
