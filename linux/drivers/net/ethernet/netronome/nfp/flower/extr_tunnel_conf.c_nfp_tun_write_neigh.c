
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_tun_neigh {int dst_ipv4; int port_id; int dst_addr; int src_addr; int src_ipv4; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dev_addr; } ;
struct neighbour {int nud_state; scalar_t__ dead; } ;
struct flowi4 {int saddr; int daddr; } ;
typedef int gfp_t ;


 int NFP_FLOWER_CMSG_TYPE_TUN_NEIGH ;
 int NUD_VALID ;
 int cpu_to_be32 (int ) ;
 int ether_addr_copy (int ,int ) ;
 int memset (struct nfp_tun_neigh*,int ,int) ;
 int neigh_event_send (struct neighbour*,int *) ;
 int neigh_ha_snapshot (int ,struct neighbour*,struct net_device*) ;
 int nfp_flower_get_port_id_from_netdev (struct nfp_app*,struct net_device*) ;
 int nfp_flower_xmit_tun_conf (struct nfp_app*,int ,int,unsigned char*,int ) ;
 int nfp_tun_add_route_to_cache (struct nfp_app*,int ) ;
 int nfp_tun_del_route_from_cache (struct nfp_app*,int ) ;

__attribute__((used)) static void
nfp_tun_write_neigh(struct net_device *netdev, struct nfp_app *app,
      struct flowi4 *flow, struct neighbour *neigh, gfp_t flag)
{
 struct nfp_tun_neigh payload;
 u32 port_id;

 port_id = nfp_flower_get_port_id_from_netdev(app, netdev);
 if (!port_id)
  return;

 memset(&payload, 0, sizeof(struct nfp_tun_neigh));
 payload.dst_ipv4 = flow->daddr;


 if (!(neigh->nud_state & NUD_VALID) || neigh->dead) {
  nfp_tun_del_route_from_cache(app, payload.dst_ipv4);

  neigh_event_send(neigh, ((void*)0));
  goto send_msg;
 }


 payload.src_ipv4 = flow->saddr;
 ether_addr_copy(payload.src_addr, netdev->dev_addr);
 neigh_ha_snapshot(payload.dst_addr, neigh, netdev);
 payload.port_id = cpu_to_be32(port_id);

 nfp_tun_add_route_to_cache(app, payload.dst_ipv4);

send_msg:
 nfp_flower_xmit_tun_conf(app, NFP_FLOWER_CMSG_TYPE_TUN_NEIGH,
     sizeof(struct nfp_tun_neigh),
     (unsigned char *)&payload, flag);
}
