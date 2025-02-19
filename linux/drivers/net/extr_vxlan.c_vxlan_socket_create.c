
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tunnel_cfg ;
struct vxlan_sock {int flags; int hlist; int refcnt; struct socket* sock; int * vni_list; } ;
struct vxlan_net {int sock_lock; } ;
struct udp_tunnel_sock_cfg {int encap_type; int gro_complete; int gro_receive; int * encap_destroy; int encap_err_lookup; int encap_rcv; struct vxlan_sock* sk_user_data; } ;
struct socket {int dummy; } ;
struct net {int dummy; } ;
typedef int __be16 ;


 int ENOMEM ;
 struct vxlan_sock* ERR_CAST (struct socket*) ;
 struct vxlan_sock* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct socket*) ;
 int UDP_TUNNEL_TYPE_VXLAN ;
 int UDP_TUNNEL_TYPE_VXLAN_GPE ;
 unsigned int VNI_HASH_SIZE ;
 int VXLAN_F_GPE ;
 int VXLAN_F_RCV_FLAGS ;
 int hlist_add_head_rcu (int *,int ) ;
 int kfree (struct vxlan_sock*) ;
 struct vxlan_sock* kzalloc (int,int ) ;
 int memset (struct udp_tunnel_sock_cfg*,int ,int) ;
 struct vxlan_net* net_generic (struct net*,int ) ;
 int refcount_set (int *,int) ;
 int setup_udp_tunnel_sock (struct net*,struct socket*,struct udp_tunnel_sock_cfg*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udp_tunnel_notify_add_rx_port (struct socket*,int ) ;
 int vs_head (struct net*,int ) ;
 struct socket* vxlan_create_sock (struct net*,int,int ,int,int) ;
 int vxlan_err_lookup ;
 int vxlan_gro_complete ;
 int vxlan_gro_receive ;
 int vxlan_net_id ;
 int vxlan_rcv ;

__attribute__((used)) static struct vxlan_sock *vxlan_socket_create(struct net *net, bool ipv6,
           __be16 port, u32 flags,
           int ifindex)
{
 struct vxlan_net *vn = net_generic(net, vxlan_net_id);
 struct vxlan_sock *vs;
 struct socket *sock;
 unsigned int h;
 struct udp_tunnel_sock_cfg tunnel_cfg;

 vs = kzalloc(sizeof(*vs), GFP_KERNEL);
 if (!vs)
  return ERR_PTR(-ENOMEM);

 for (h = 0; h < VNI_HASH_SIZE; ++h)
  INIT_HLIST_HEAD(&vs->vni_list[h]);

 sock = vxlan_create_sock(net, ipv6, port, flags, ifindex);
 if (IS_ERR(sock)) {
  kfree(vs);
  return ERR_CAST(sock);
 }

 vs->sock = sock;
 refcount_set(&vs->refcnt, 1);
 vs->flags = (flags & VXLAN_F_RCV_FLAGS);

 spin_lock(&vn->sock_lock);
 hlist_add_head_rcu(&vs->hlist, vs_head(net, port));
 udp_tunnel_notify_add_rx_port(sock,
          (vs->flags & VXLAN_F_GPE) ?
          UDP_TUNNEL_TYPE_VXLAN_GPE :
          UDP_TUNNEL_TYPE_VXLAN);
 spin_unlock(&vn->sock_lock);


 memset(&tunnel_cfg, 0, sizeof(tunnel_cfg));
 tunnel_cfg.sk_user_data = vs;
 tunnel_cfg.encap_type = 1;
 tunnel_cfg.encap_rcv = vxlan_rcv;
 tunnel_cfg.encap_err_lookup = vxlan_err_lookup;
 tunnel_cfg.encap_destroy = ((void*)0);
 tunnel_cfg.gro_receive = vxlan_gro_receive;
 tunnel_cfg.gro_complete = vxlan_gro_complete;

 setup_udp_tunnel_sock(net, sock, &tunnel_cfg);

 return vs;
}
