
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct efx_nic {int vf_count; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {struct ef10_vf* vf; } ;
struct ef10_vf {int * mac; TYPE_2__* efx; int vport_id; } ;
struct TYPE_12__ {int * dev_addr; } ;
struct TYPE_11__ {TYPE_4__* net_dev; int filter_sem; TYPE_1__* type; } ;
struct TYPE_10__ {int (* filter_table_probe ) (TYPE_2__*) ;int (* filter_table_remove ) (TYPE_2__*) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EVB_PORT_ID_ASSIGNED ;
 int EVB_PORT_ID_NULL ;
 int down_write (int *) ;
 int efx_device_attach_if_not_resetting (TYPE_2__*) ;
 int efx_device_detach_sync (TYPE_2__*) ;
 int efx_ef10_evb_port_assign (struct efx_nic*,int ,int) ;
 int efx_ef10_vadaptor_alloc (TYPE_2__*,int ) ;
 int efx_ef10_vadaptor_free (TYPE_2__*,int ) ;
 int efx_ef10_vport_add_mac (struct efx_nic*,int ,int *) ;
 int efx_ef10_vport_del_vf_mac (struct efx_nic*,int ,int *) ;
 int efx_net_open (TYPE_4__*) ;
 int efx_net_stop (TYPE_4__*) ;
 int eth_zero_addr (int *) ;
 int ether_addr_copy (int *,int *) ;
 int is_zero_ether_addr (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int up_write (int *) ;

int efx_ef10_sriov_set_vf_mac(struct efx_nic *efx, int vf_i, u8 *mac)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 struct ef10_vf *vf;
 int rc;

 if (!nic_data->vf)
  return -EOPNOTSUPP;

 if (vf_i >= efx->vf_count)
  return -EINVAL;
 vf = nic_data->vf + vf_i;

 if (vf->efx) {
  efx_device_detach_sync(vf->efx);
  efx_net_stop(vf->efx->net_dev);

  down_write(&vf->efx->filter_sem);
  vf->efx->type->filter_table_remove(vf->efx);

  rc = efx_ef10_vadaptor_free(vf->efx, EVB_PORT_ID_ASSIGNED);
  if (rc) {
   up_write(&vf->efx->filter_sem);
   return rc;
  }
 }

 rc = efx_ef10_evb_port_assign(efx, EVB_PORT_ID_NULL, vf_i);
 if (rc)
  return rc;

 if (!is_zero_ether_addr(vf->mac)) {
  rc = efx_ef10_vport_del_vf_mac(efx, vf->vport_id, vf->mac);
  if (rc)
   return rc;
 }

 if (!is_zero_ether_addr(mac)) {
  rc = efx_ef10_vport_add_mac(efx, vf->vport_id, mac);
  if (rc) {
   eth_zero_addr(vf->mac);
   goto fail;
  }
  if (vf->efx)
   ether_addr_copy(vf->efx->net_dev->dev_addr, mac);
 }

 ether_addr_copy(vf->mac, mac);

 rc = efx_ef10_evb_port_assign(efx, vf->vport_id, vf_i);
 if (rc)
  goto fail;

 if (vf->efx) {

  rc = efx_ef10_vadaptor_alloc(vf->efx, EVB_PORT_ID_ASSIGNED);
  if (rc) {
   up_write(&vf->efx->filter_sem);
   return rc;
  }
  vf->efx->type->filter_table_probe(vf->efx);
  up_write(&vf->efx->filter_sem);
  efx_net_open(vf->efx->net_dev);
  efx_device_attach_if_not_resetting(vf->efx);
 }

 return 0;

fail:
 eth_zero_addr(vf->mac);
 return rc;
}
