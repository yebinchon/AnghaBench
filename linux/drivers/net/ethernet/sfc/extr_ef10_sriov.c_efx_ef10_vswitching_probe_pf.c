
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct efx_nic {int pci_dev; struct net_device* net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int vport_id; int vport_mac; } ;


 int EFX_EF10_NO_VLAN ;
 int EVB_PORT_ID_ASSIGNED ;
 int MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL ;
 int MC_CMD_VSWITCH_ALLOC_IN_VSWITCH_TYPE_VEB ;
 int efx_ef10_vadaptor_alloc_set_features (struct efx_nic*) ;
 int efx_ef10_vport_add_mac (struct efx_nic*,int ,int ) ;
 int efx_ef10_vport_alloc (struct efx_nic*,int ,int ,int ,int *) ;
 int efx_ef10_vport_del_mac (struct efx_nic*,int ,int ) ;
 int efx_ef10_vport_free (struct efx_nic*,int ) ;
 int efx_ef10_vswitch_alloc (struct efx_nic*,int ,int ) ;
 int efx_ef10_vswitch_free (struct efx_nic*,int ) ;
 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ pci_sriov_get_totalvfs (int ) ;

int efx_ef10_vswitching_probe_pf(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 struct net_device *net_dev = efx->net_dev;
 int rc;

 if (pci_sriov_get_totalvfs(efx->pci_dev) <= 0) {

  efx_ef10_vadaptor_alloc_set_features(efx);
  return 0;
 }

 rc = efx_ef10_vswitch_alloc(efx, EVB_PORT_ID_ASSIGNED,
        MC_CMD_VSWITCH_ALLOC_IN_VSWITCH_TYPE_VEB);
 if (rc)
  goto fail1;

 rc = efx_ef10_vport_alloc(efx, EVB_PORT_ID_ASSIGNED,
      MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL,
      EFX_EF10_NO_VLAN, &nic_data->vport_id);
 if (rc)
  goto fail2;

 rc = efx_ef10_vport_add_mac(efx, nic_data->vport_id, net_dev->dev_addr);
 if (rc)
  goto fail3;
 ether_addr_copy(nic_data->vport_mac, net_dev->dev_addr);

 rc = efx_ef10_vadaptor_alloc_set_features(efx);
 if (rc)
  goto fail4;

 return 0;
fail4:
 efx_ef10_vport_del_mac(efx, nic_data->vport_id, nic_data->vport_mac);
 eth_zero_addr(nic_data->vport_mac);
fail3:
 efx_ef10_vport_free(efx, nic_data->vport_id);
 nic_data->vport_id = EVB_PORT_ID_ASSIGNED;
fail2:
 efx_ef10_vswitch_free(efx, EVB_PORT_ID_ASSIGNED);
fail1:
 return rc;
}
