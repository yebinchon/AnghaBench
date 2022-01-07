
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct udp_tunnel_info {int type; int port; } ;
struct net_device {int dummy; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int state; int pending_udp_bitmap; TYPE_1__* udp_ports; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct TYPE_2__ {scalar_t__ port; int type; } ;


 int BIT_ULL (size_t) ;
 int I40E_AQC_TUNNEL_TYPE_NGE ;
 int I40E_AQC_TUNNEL_TYPE_VXLAN ;
 size_t I40E_MAX_PF_UDP_OFFLOAD_PORTS ;


 int __I40E_UDP_FILTER_SYNC_PENDING ;
 size_t i40e_get_udp_port_idx (struct i40e_pf*,int ) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int ) ;
 int ntohs (int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void i40e_udp_tunnel_del(struct net_device *netdev,
    struct udp_tunnel_info *ti)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;
 u16 port = ntohs(ti->port);
 u8 idx;

 idx = i40e_get_udp_port_idx(pf, port);


 if (idx >= I40E_MAX_PF_UDP_OFFLOAD_PORTS)
  goto not_found;

 switch (ti->type) {
 case 128:
  if (pf->udp_ports[idx].type != I40E_AQC_TUNNEL_TYPE_VXLAN)
   goto not_found;
  break;
 case 129:
  if (pf->udp_ports[idx].type != I40E_AQC_TUNNEL_TYPE_NGE)
   goto not_found;
  break;
 default:
  goto not_found;
 }




 pf->udp_ports[idx].port = 0;





 pf->pending_udp_bitmap ^= BIT_ULL(idx);
 set_bit(__I40E_UDP_FILTER_SYNC_PENDING, pf->state);

 return;
not_found:
 netdev_warn(netdev, "UDP port %d was not found, not deleting\n",
      port);
}
