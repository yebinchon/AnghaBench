
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geneve_sock {int sock; int list; scalar_t__ refcnt; } ;


 int UDP_TUNNEL_TYPE_GENEVE ;
 int kfree_rcu (struct geneve_sock*,int ) ;
 int list_del (int *) ;
 int rcu ;
 int udp_tunnel_notify_del_rx_port (int ,int ) ;
 int udp_tunnel_sock_release (int ) ;

__attribute__((used)) static void __geneve_sock_release(struct geneve_sock *gs)
{
 if (!gs || --gs->refcnt)
  return;

 list_del(&gs->list);
 udp_tunnel_notify_del_rx_port(gs->sock, UDP_TUNNEL_TYPE_GENEVE);
 udp_tunnel_sock_release(gs->sock);
 kfree_rcu(gs, rcu);
}
