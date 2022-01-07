
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlan_sock {int flags; TYPE_1__* sock; int hlist; int refcnt; } ;
struct vxlan_net {int sock_lock; } ;
struct TYPE_2__ {int sk; } ;


 int UDP_TUNNEL_TYPE_VXLAN ;
 int UDP_TUNNEL_TYPE_VXLAN_GPE ;
 int VXLAN_F_GPE ;
 int hlist_del_rcu (int *) ;
 struct vxlan_net* net_generic (int ,int ) ;
 int refcount_dec_and_test (int *) ;
 int sock_net (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udp_tunnel_notify_del_rx_port (TYPE_1__*,int ) ;
 int vxlan_net_id ;

__attribute__((used)) static bool __vxlan_sock_release_prep(struct vxlan_sock *vs)
{
 struct vxlan_net *vn;

 if (!vs)
  return 0;
 if (!refcount_dec_and_test(&vs->refcnt))
  return 0;

 vn = net_generic(sock_net(vs->sock->sk), vxlan_net_id);
 spin_lock(&vn->sock_lock);
 hlist_del_rcu(&vs->hlist);
 udp_tunnel_notify_del_rx_port(vs->sock,
          (vs->flags & VXLAN_F_GPE) ?
          UDP_TUNNEL_TYPE_VXLAN_GPE :
          UDP_TUNNEL_TYPE_VXLAN);
 spin_unlock(&vn->sock_lock);

 return 1;
}
