
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int datapath_caps; scalar_t__ udp_tunnels_dirty; } ;
typedef int __be16 ;


 int MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN ;
 int * __efx_ef10_udp_tnl_lookup_port (struct efx_nic*,int ) ;

__attribute__((used)) static bool efx_ef10_udp_tnl_has_port(struct efx_nic *efx, __be16 port)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;

 if (!(nic_data->datapath_caps &
       (1 << MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN)))
  return 0;

 if (nic_data->udp_tunnels_dirty)



  return 0;

 return __efx_ef10_udp_tnl_lookup_port(efx, port) != ((void*)0);
}
