
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int typebuf ;
struct efx_udp_tunnel {scalar_t__ type; int port; scalar_t__ count; } ;
struct efx_nic {int net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int datapath_caps; int udp_tunnels_lock; } ;


 int ENOENT ;
 int MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN ;
 struct efx_udp_tunnel* __efx_ef10_udp_tnl_lookup_port (struct efx_nic*,int ) ;
 int drv ;
 int efx_device_detach_sync (struct efx_nic*) ;
 int efx_ef10_set_udp_tnl_ports (struct efx_nic*,int) ;
 int efx_get_udp_tunnel_type_name (scalar_t__,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,char*,...) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,int ,char*) ;
 int ntohs (int ) ;

__attribute__((used)) static int efx_ef10_udp_tnl_del_port(struct efx_nic *efx,
         struct efx_udp_tunnel tnl)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 struct efx_udp_tunnel *match;
 char typebuf[8];
 int rc;

 if (!(nic_data->datapath_caps &
       (1 << MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN)))
  return 0;

 efx_get_udp_tunnel_type_name(tnl.type, typebuf, sizeof(typebuf));
 netif_dbg(efx, drv, efx->net_dev, "Removing UDP tunnel (%s) port %d\n",
    typebuf, ntohs(tnl.port));

 mutex_lock(&nic_data->udp_tunnels_lock);



 efx_device_detach_sync(efx);

 match = __efx_ef10_udp_tnl_lookup_port(efx, tnl.port);
 if (match != ((void*)0)) {
  if (match->type == tnl.type) {
   if (--match->count) {

    netif_dbg(efx, drv, efx->net_dev,
       "UDP tunnel port %d remains active\n",
       ntohs(tnl.port));
    rc = 0;
    goto out_unlock;
   }
   rc = efx_ef10_set_udp_tnl_ports(efx, 0);
   goto out_unlock;
  }
  efx_get_udp_tunnel_type_name(match->type,
          typebuf, sizeof(typebuf));
  netif_warn(efx, drv, efx->net_dev,
      "UDP port %d is actually in use by %s, not removing\n",
      ntohs(tnl.port), typebuf);
 }
 rc = -ENOENT;

out_unlock:
 mutex_unlock(&nic_data->udp_tunnels_lock);
 return rc;
}
