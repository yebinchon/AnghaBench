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
typedef  int /*<<< orphan*/  tunnel_cfg ;
struct udp_tunnel_sock_cfg {int encap_type; int /*<<< orphan*/ * encap_destroy; int /*<<< orphan*/  encap_err_lookup; int /*<<< orphan*/  encap_rcv; int /*<<< orphan*/  gro_complete; int /*<<< orphan*/  gro_receive; struct geneve_sock* sk_user_data; } ;
struct socket {int dummy; } ;
struct net {int dummy; } ;
struct geneve_sock {int refcnt; int /*<<< orphan*/  list; struct socket* sock; int /*<<< orphan*/ * vni_list; } ;
struct geneve_net {int /*<<< orphan*/  sock_list; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct geneve_sock* FUNC0 (struct socket*) ; 
 struct geneve_sock* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  UDP_TUNNEL_TYPE_GENEVE ; 
 int VNI_HASH_SIZE ; 
 struct socket* FUNC4 (struct net*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  geneve_gro_complete ; 
 int /*<<< orphan*/  geneve_gro_receive ; 
 int /*<<< orphan*/  geneve_net_id ; 
 int /*<<< orphan*/  geneve_udp_encap_err_lookup ; 
 int /*<<< orphan*/  geneve_udp_encap_recv ; 
 int /*<<< orphan*/  FUNC5 (struct geneve_sock*) ; 
 struct geneve_sock* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct udp_tunnel_sock_cfg*,int /*<<< orphan*/ ,int) ; 
 struct geneve_net* FUNC9 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,struct socket*,struct udp_tunnel_sock_cfg*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct geneve_sock *FUNC12(struct net *net, __be16 port,
						bool ipv6, bool ipv6_rx_csum)
{
	struct geneve_net *gn = FUNC9(net, geneve_net_id);
	struct geneve_sock *gs;
	struct socket *sock;
	struct udp_tunnel_sock_cfg tunnel_cfg;
	int h;

	gs = FUNC6(sizeof(*gs), GFP_KERNEL);
	if (!gs)
		return FUNC1(-ENOMEM);

	sock = FUNC4(net, ipv6, port, ipv6_rx_csum);
	if (FUNC3(sock)) {
		FUNC5(gs);
		return FUNC0(sock);
	}

	gs->sock = sock;
	gs->refcnt = 1;
	for (h = 0; h < VNI_HASH_SIZE; ++h)
		FUNC2(&gs->vni_list[h]);

	/* Initialize the geneve udp offloads structure */
	FUNC11(gs->sock, UDP_TUNNEL_TYPE_GENEVE);

	/* Mark socket as an encapsulation socket */
	FUNC8(&tunnel_cfg, 0, sizeof(tunnel_cfg));
	tunnel_cfg.sk_user_data = gs;
	tunnel_cfg.encap_type = 1;
	tunnel_cfg.gro_receive = geneve_gro_receive;
	tunnel_cfg.gro_complete = geneve_gro_complete;
	tunnel_cfg.encap_rcv = geneve_udp_encap_recv;
	tunnel_cfg.encap_err_lookup = geneve_udp_encap_err_lookup;
	tunnel_cfg.encap_destroy = NULL;
	FUNC10(net, sock, &tunnel_cfg);
	FUNC7(&gs->list, &gn->sock_list);
	return gs;
}