
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct sk_buff {int dummy; } ;
struct nfp_tun_active_tuns {TYPE_1__* tun_info; int count; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int egress_port; int ipv4; } ;


 int NFP_FL_MAX_ROUTES ;
 int arp_tbl ;
 void* be32_to_cpu (int ) ;
 int neigh_event_send (struct neighbour*,int *) ;
 struct neighbour* neigh_lookup (int *,int *,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 struct net_device* nfp_app_dev_get (struct nfp_app*,void*,int *) ;
 struct nfp_tun_active_tuns* nfp_flower_cmsg_get_data (struct sk_buff*) ;
 int nfp_flower_cmsg_get_data_len (struct sk_buff*) ;
 int nfp_flower_cmsg_warn (struct nfp_app*,char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int struct_size (struct nfp_tun_active_tuns*,int ,int) ;
 int tun_info ;

void nfp_tunnel_keep_alive(struct nfp_app *app, struct sk_buff *skb)
{
 struct nfp_tun_active_tuns *payload;
 struct net_device *netdev;
 int count, i, pay_len;
 struct neighbour *n;
 __be32 ipv4_addr;
 u32 port;

 payload = nfp_flower_cmsg_get_data(skb);
 count = be32_to_cpu(payload->count);
 if (count > NFP_FL_MAX_ROUTES) {
  nfp_flower_cmsg_warn(app, "Tunnel keep-alive request exceeds max routes.\n");
  return;
 }

 pay_len = nfp_flower_cmsg_get_data_len(skb);
 if (pay_len != struct_size(payload, tun_info, count)) {
  nfp_flower_cmsg_warn(app, "Corruption in tunnel keep-alive message.\n");
  return;
 }

 rcu_read_lock();
 for (i = 0; i < count; i++) {
  ipv4_addr = payload->tun_info[i].ipv4;
  port = be32_to_cpu(payload->tun_info[i].egress_port);
  netdev = nfp_app_dev_get(app, port, ((void*)0));
  if (!netdev)
   continue;

  n = neigh_lookup(&arp_tbl, &ipv4_addr, netdev);
  if (!n)
   continue;


  neigh_event_send(n, ((void*)0));
  neigh_release(n);
 }
 rcu_read_unlock();
}
