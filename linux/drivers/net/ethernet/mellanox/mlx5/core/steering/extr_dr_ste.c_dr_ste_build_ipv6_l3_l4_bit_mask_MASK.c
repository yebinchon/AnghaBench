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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5dr_match_spec {scalar_t__ tcp_flags; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5dr_match_spec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlx5dr_match_spec*) ; 
 int /*<<< orphan*/  dscp ; 
 int /*<<< orphan*/  dst_port ; 
 int /*<<< orphan*/  ecn ; 
 int /*<<< orphan*/  eth_l4 ; 
 int /*<<< orphan*/  frag ; 
 int /*<<< orphan*/  fragmented ; 
 int /*<<< orphan*/  ip_dscp ; 
 int /*<<< orphan*/  ip_ecn ; 
 int /*<<< orphan*/  ip_protocol ; 
 int /*<<< orphan*/  ipv6_hop_limit ; 
 int /*<<< orphan*/  protocol ; 
 int /*<<< orphan*/  src_port ; 
 int /*<<< orphan*/  tcp_dport ; 
 int /*<<< orphan*/  tcp_sport ; 
 int /*<<< orphan*/  ttl_hoplimit ; 
 int /*<<< orphan*/  udp_dport ; 
 int /*<<< orphan*/  udp_sport ; 

__attribute__((used)) static void FUNC2(struct mlx5dr_match_param *value,
					     bool inner, u8 *bit_mask)
{
	struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;

	FUNC0(eth_l4, bit_mask, dst_port, mask, tcp_dport);
	FUNC0(eth_l4, bit_mask, src_port, mask, tcp_sport);
	FUNC0(eth_l4, bit_mask, dst_port, mask, udp_dport);
	FUNC0(eth_l4, bit_mask, src_port, mask, udp_sport);
	FUNC0(eth_l4, bit_mask, protocol, mask, ip_protocol);
	FUNC0(eth_l4, bit_mask, fragmented, mask, frag);
	FUNC0(eth_l4, bit_mask, dscp, mask, ip_dscp);
	FUNC0(eth_l4, bit_mask, ecn, mask, ip_ecn);
	FUNC0(eth_l4, bit_mask, ipv6_hop_limit, mask, ttl_hoplimit);

	if (mask->tcp_flags) {
		FUNC1(eth_l4, bit_mask, mask);
		mask->tcp_flags = 0;
	}
}