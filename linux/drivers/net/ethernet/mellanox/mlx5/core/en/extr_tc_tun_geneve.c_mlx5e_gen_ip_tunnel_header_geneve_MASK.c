#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int /*<<< orphan*/  dest; } ;
struct mlx5e_encap_entry {struct ip_tunnel_info* tun_info; } ;
struct TYPE_2__ {int tun_flags; int /*<<< orphan*/  tun_id; int /*<<< orphan*/  tp_dst; } ;
struct ip_tunnel_info {int options_len; TYPE_1__ key; } ;
struct genevehdr {int opt_len; int oam; int critical; int /*<<< orphan*/  options; int /*<<< orphan*/  proto_type; int /*<<< orphan*/  vni; int /*<<< orphan*/  ver; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_TEB ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  MLX5E_GENEVE_VER ; 
 int TUNNEL_CRIT_OPT ; 
 int TUNNEL_GENEVE_OPT ; 
 int TUNNEL_OAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ip_tunnel_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct genevehdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(char buf[],
					     __u8 *ip_proto,
					     struct mlx5e_encap_entry *e)
{
	const struct ip_tunnel_info *tun_info = e->tun_info;
	struct udphdr *udp = (struct udphdr *)(buf);
	struct genevehdr *geneveh;

	geneveh = (struct genevehdr *)((char *)udp + sizeof(struct udphdr));

	*ip_proto = IPPROTO_UDP;

	udp->dest = tun_info->key.tp_dst;

	FUNC2(geneveh, 0, sizeof(*geneveh));
	geneveh->ver = MLX5E_GENEVE_VER;
	geneveh->opt_len = tun_info->options_len / 4;
	geneveh->oam = !!(tun_info->key.tun_flags & TUNNEL_OAM);
	geneveh->critical = !!(tun_info->key.tun_flags & TUNNEL_CRIT_OPT);
	FUNC3(tun_info->key.tun_id, geneveh->vni);
	geneveh->proto_type = FUNC0(ETH_P_TEB);

	if (tun_info->key.tun_flags & TUNNEL_GENEVE_OPT) {
		if (!geneveh->opt_len)
			return -EOPNOTSUPP;
		FUNC1(geneveh->options, tun_info);
	}

	return 0;
}