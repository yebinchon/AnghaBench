
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_tunnel_info {scalar_t__ sa_family; int type; int port; } ;
struct net_device {int dummy; } ;
struct bnxt {int vxlan_port_cnt; int nge_port_cnt; int sp_event; int nge_port; int vxlan_port; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int BNXT_GENEVE_ADD_PORT_SP_EVENT ;
 int BNXT_VXLAN_ADD_PORT_SP_EVENT ;


 int bnxt_queue_sp_work (struct bnxt*) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void bnxt_udp_tunnel_add(struct net_device *dev,
    struct udp_tunnel_info *ti)
{
 struct bnxt *bp = netdev_priv(dev);

 if (ti->sa_family != AF_INET6 && ti->sa_family != AF_INET)
  return;

 if (!netif_running(dev))
  return;

 switch (ti->type) {
 case 128:
  if (bp->vxlan_port_cnt && bp->vxlan_port != ti->port)
   return;

  bp->vxlan_port_cnt++;
  if (bp->vxlan_port_cnt == 1) {
   bp->vxlan_port = ti->port;
   set_bit(BNXT_VXLAN_ADD_PORT_SP_EVENT, &bp->sp_event);
   bnxt_queue_sp_work(bp);
  }
  break;
 case 129:
  if (bp->nge_port_cnt && bp->nge_port != ti->port)
   return;

  bp->nge_port_cnt++;
  if (bp->nge_port_cnt == 1) {
   bp->nge_port = ti->port;
   set_bit(BNXT_GENEVE_ADD_PORT_SP_EVENT, &bp->sp_event);
  }
  break;
 default:
  return;
 }

 bnxt_queue_sp_work(bp);
}
