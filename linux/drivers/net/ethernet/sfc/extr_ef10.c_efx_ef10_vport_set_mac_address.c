
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct efx_nic {TYPE_1__* net_dev; int filter_sem; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int vport_id; int * vport_mac; } ;
struct TYPE_4__ {int * dev_addr; } ;


 int ETH_ALEN ;
 int RESET_TYPE_DATAPATH ;
 int down_write (int *) ;
 int drv ;
 int efx_device_attach_if_not_resetting (struct efx_nic*) ;
 int efx_device_detach_sync (struct efx_nic*) ;
 int efx_ef10_filter_table_probe (struct efx_nic*) ;
 int efx_ef10_filter_table_remove (struct efx_nic*) ;
 int efx_ef10_vadaptor_alloc (struct efx_nic*,int ) ;
 int efx_ef10_vadaptor_free (struct efx_nic*,int ) ;
 int efx_ef10_vport_add_mac (struct efx_nic*,int ,int *) ;
 int efx_ef10_vport_del_mac (struct efx_nic*,int ,int *) ;
 int efx_net_open (TYPE_1__*) ;
 int efx_net_stop (TYPE_1__*) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int eth_zero_addr (int *) ;
 int ether_addr_copy (int *,int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int netif_err (struct efx_nic*,int ,TYPE_1__*,char*) ;
 int up_write (int *) ;

__attribute__((used)) static int efx_ef10_vport_set_mac_address(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 u8 mac_old[ETH_ALEN];
 int rc, rc2;


 if (is_zero_ether_addr(nic_data->vport_mac))
  return 0;

 efx_device_detach_sync(efx);
 efx_net_stop(efx->net_dev);
 down_write(&efx->filter_sem);
 efx_ef10_filter_table_remove(efx);
 up_write(&efx->filter_sem);

 rc = efx_ef10_vadaptor_free(efx, nic_data->vport_id);
 if (rc)
  goto restore_filters;

 ether_addr_copy(mac_old, nic_data->vport_mac);
 rc = efx_ef10_vport_del_mac(efx, nic_data->vport_id,
        nic_data->vport_mac);
 if (rc)
  goto restore_vadaptor;

 rc = efx_ef10_vport_add_mac(efx, nic_data->vport_id,
        efx->net_dev->dev_addr);
 if (!rc) {
  ether_addr_copy(nic_data->vport_mac, efx->net_dev->dev_addr);
 } else {
  rc2 = efx_ef10_vport_add_mac(efx, nic_data->vport_id, mac_old);
  if (rc2) {

   eth_zero_addr(nic_data->vport_mac);
   goto reset_nic;
  }
 }

restore_vadaptor:
 rc2 = efx_ef10_vadaptor_alloc(efx, nic_data->vport_id);
 if (rc2)
  goto reset_nic;
restore_filters:
 down_write(&efx->filter_sem);
 rc2 = efx_ef10_filter_table_probe(efx);
 up_write(&efx->filter_sem);
 if (rc2)
  goto reset_nic;

 rc2 = efx_net_open(efx->net_dev);
 if (rc2)
  goto reset_nic;

 efx_device_attach_if_not_resetting(efx);

 return rc;

reset_nic:
 netif_err(efx, drv, efx->net_dev,
    "Failed to restore when changing MAC address - scheduling reset\n");
 efx_schedule_reset(efx, RESET_TYPE_DATAPATH);

 return rc ? rc : rc2;
}
