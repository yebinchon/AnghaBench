
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct udp_tunnel_info {int type; int port; } ;
struct net_device {int dummy; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int hw_features; int state; int pending_udp_bitmap; TYPE_1__* udp_ports; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct TYPE_2__ {int filter_index; int port; int type; } ;


 int BIT_ULL (scalar_t__) ;
 int I40E_AQC_TUNNEL_TYPE_NGE ;
 int I40E_AQC_TUNNEL_TYPE_VXLAN ;
 int I40E_HW_GENEVE_OFFLOAD_CAPABLE ;
 scalar_t__ I40E_MAX_PF_UDP_OFFLOAD_PORTS ;
 int I40E_UDP_PORT_INDEX_UNUSED ;


 int __I40E_UDP_FILTER_SYNC_PENDING ;
 scalar_t__ i40e_get_udp_port_idx (struct i40e_pf*,int ) ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int ntohs (int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void i40e_udp_tunnel_add(struct net_device *netdev,
    struct udp_tunnel_info *ti)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;
 u16 port = ntohs(ti->port);
 u8 next_idx;
 u8 idx;

 idx = i40e_get_udp_port_idx(pf, port);


 if (idx < I40E_MAX_PF_UDP_OFFLOAD_PORTS) {
  netdev_info(netdev, "port %d already offloaded\n", port);
  return;
 }


 next_idx = i40e_get_udp_port_idx(pf, 0);

 if (next_idx == I40E_MAX_PF_UDP_OFFLOAD_PORTS) {
  netdev_info(netdev, "maximum number of offloaded UDP ports reached, not adding port %d\n",
       port);
  return;
 }

 switch (ti->type) {
 case 128:
  pf->udp_ports[next_idx].type = I40E_AQC_TUNNEL_TYPE_VXLAN;
  break;
 case 129:
  if (!(pf->hw_features & I40E_HW_GENEVE_OFFLOAD_CAPABLE))
   return;
  pf->udp_ports[next_idx].type = I40E_AQC_TUNNEL_TYPE_NGE;
  break;
 default:
  return;
 }


 pf->udp_ports[next_idx].port = port;
 pf->udp_ports[next_idx].filter_index = I40E_UDP_PORT_INDEX_UNUSED;
 pf->pending_udp_bitmap |= BIT_ULL(next_idx);
 set_bit(__I40E_UDP_FILTER_SYNC_PENDING, pf->state);
}
