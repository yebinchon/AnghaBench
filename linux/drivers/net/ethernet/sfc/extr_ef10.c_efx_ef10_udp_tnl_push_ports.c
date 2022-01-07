
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int udp_tunnels_lock; scalar_t__ udp_tunnels_dirty; } ;


 int efx_device_detach_sync (struct efx_nic*) ;
 int efx_ef10_set_udp_tnl_ports (struct efx_nic*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int efx_ef10_udp_tnl_push_ports(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 int rc = 0;

 mutex_lock(&nic_data->udp_tunnels_lock);
 if (nic_data->udp_tunnels_dirty) {



  efx_device_detach_sync(efx);
  rc = efx_ef10_set_udp_tnl_ports(efx, 0);
 }
 mutex_unlock(&nic_data->udp_tunnels_lock);
 return rc;
}
