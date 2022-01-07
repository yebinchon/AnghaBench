
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int typebuf ;
struct efx_udp_tunnel {scalar_t__ type; int count; int port; } ;
struct efx_nic {int net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int datapath_caps; int udp_tunnels_lock; struct efx_udp_tunnel* udp_tunnels; } ;


 size_t ARRAY_SIZE (struct efx_udp_tunnel*) ;
 int EEXIST ;
 int ENOMEM ;
 int MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN ;
 struct efx_udp_tunnel* __efx_ef10_udp_tnl_lookup_port (struct efx_nic*,int ) ;
 int drv ;
 int efx_device_detach_sync (struct efx_nic*) ;
 int efx_ef10_set_udp_tnl_ports (struct efx_nic*,int) ;
 int efx_get_udp_tunnel_type_name (scalar_t__,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,...) ;
 char* ntohs (int ) ;

__attribute__((used)) static int efx_ef10_udp_tnl_add_port(struct efx_nic *efx,
         struct efx_udp_tunnel tnl)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 struct efx_udp_tunnel *match;
 char typebuf[8];
 size_t i;
 int rc;

 if (!(nic_data->datapath_caps &
       (1 << MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN)))
  return 0;

 efx_get_udp_tunnel_type_name(tnl.type, typebuf, sizeof(typebuf));
 netif_dbg(efx, drv, efx->net_dev, "Adding UDP tunnel (%s) port %d\n",
    typebuf, ntohs(tnl.port));

 mutex_lock(&nic_data->udp_tunnels_lock);



 efx_device_detach_sync(efx);

 match = __efx_ef10_udp_tnl_lookup_port(efx, tnl.port);
 if (match != ((void*)0)) {
  if (match->type == tnl.type) {
   netif_dbg(efx, drv, efx->net_dev,
      "Referencing existing tunnel entry\n");
   match->count++;

   rc = 0;
   goto unlock_out;
  }
  efx_get_udp_tunnel_type_name(match->type,
          typebuf, sizeof(typebuf));
  netif_dbg(efx, drv, efx->net_dev,
     "UDP port %d is already in use by %s\n",
     ntohs(tnl.port), typebuf);
  rc = -EEXIST;
  goto unlock_out;
 }

 for (i = 0; i < ARRAY_SIZE(nic_data->udp_tunnels); ++i)
  if (!nic_data->udp_tunnels[i].count) {
   nic_data->udp_tunnels[i] = tnl;
   nic_data->udp_tunnels[i].count = 1;
   rc = efx_ef10_set_udp_tnl_ports(efx, 0);
   goto unlock_out;
  }

 netif_dbg(efx, drv, efx->net_dev,
    "Unable to add UDP tunnel (%s) port %d; insufficient resources.\n",
    typebuf, ntohs(tnl.port));

 rc = -ENOMEM;

unlock_out:
 mutex_unlock(&nic_data->udp_tunnels_lock);
 return rc;
}
