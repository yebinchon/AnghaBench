#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  tunnel_cfg ;
struct vxlan_sock {int flags; int /*<<< orphan*/  hlist; int /*<<< orphan*/  refcnt; struct socket* sock; int /*<<< orphan*/ * vni_list; } ;
struct vxlan_net {int /*<<< orphan*/  sock_lock; } ;
struct udp_tunnel_sock_cfg {int encap_type; int /*<<< orphan*/  gro_complete; int /*<<< orphan*/  gro_receive; int /*<<< orphan*/ * encap_destroy; int /*<<< orphan*/  encap_err_lookup; int /*<<< orphan*/  encap_rcv; struct vxlan_sock* sk_user_data; } ;
struct socket {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct vxlan_sock* FUNC0 (struct socket*) ; 
 struct vxlan_sock* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  UDP_TUNNEL_TYPE_VXLAN ; 
 int /*<<< orphan*/  UDP_TUNNEL_TYPE_VXLAN_GPE ; 
 unsigned int VNI_HASH_SIZE ; 
 int VXLAN_F_GPE ; 
 int VXLAN_F_RCV_FLAGS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vxlan_sock*) ; 
 struct vxlan_sock* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct udp_tunnel_sock_cfg*,int /*<<< orphan*/ ,int) ; 
 struct vxlan_net* FUNC8 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,struct socket*,struct udp_tunnel_sock_cfg*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct net*,int /*<<< orphan*/ ) ; 
 struct socket* FUNC15 (struct net*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  vxlan_err_lookup ; 
 int /*<<< orphan*/  vxlan_gro_complete ; 
 int /*<<< orphan*/  vxlan_gro_receive ; 
 int /*<<< orphan*/  vxlan_net_id ; 
 int /*<<< orphan*/  vxlan_rcv ; 

__attribute__((used)) static struct vxlan_sock *FUNC16(struct net *net, bool ipv6,
					      __be16 port, u32 flags,
					      int ifindex)
{
	struct vxlan_net *vn = FUNC8(net, vxlan_net_id);
	struct vxlan_sock *vs;
	struct socket *sock;
	unsigned int h;
	struct udp_tunnel_sock_cfg tunnel_cfg;

	vs = FUNC6(sizeof(*vs), GFP_KERNEL);
	if (!vs)
		return FUNC1(-ENOMEM);

	for (h = 0; h < VNI_HASH_SIZE; ++h)
		FUNC2(&vs->vni_list[h]);

	sock = FUNC15(net, ipv6, port, flags, ifindex);
	if (FUNC3(sock)) {
		FUNC5(vs);
		return FUNC0(sock);
	}

	vs->sock = sock;
	FUNC9(&vs->refcnt, 1);
	vs->flags = (flags & VXLAN_F_RCV_FLAGS);

	FUNC11(&vn->sock_lock);
	FUNC4(&vs->hlist, FUNC14(net, port));
	FUNC13(sock,
				      (vs->flags & VXLAN_F_GPE) ?
				      UDP_TUNNEL_TYPE_VXLAN_GPE :
				      UDP_TUNNEL_TYPE_VXLAN);
	FUNC12(&vn->sock_lock);

	/* Mark socket as an encapsulation socket. */
	FUNC7(&tunnel_cfg, 0, sizeof(tunnel_cfg));
	tunnel_cfg.sk_user_data = vs;
	tunnel_cfg.encap_type = 1;
	tunnel_cfg.encap_rcv = vxlan_rcv;
	tunnel_cfg.encap_err_lookup = vxlan_err_lookup;
	tunnel_cfg.encap_destroy = NULL;
	tunnel_cfg.gro_receive = vxlan_gro_receive;
	tunnel_cfg.gro_complete = vxlan_gro_complete;

	FUNC10(net, sock, &tunnel_cfg);

	return vs;
}