#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5dr_match_misc {void* bth_dst_qp; void* geneve_protocol_type; void* geneve_opt_len; void* inner_ipv6_flow_label; void* outer_ipv6_flow_label; void* geneve_oam; void* geneve_vni; void* vxlan_vni; void* gre_key_l; void* gre_key_h; void* gre_protocol; void* inner_second_svlan_tag; void* outer_second_svlan_tag; void* inner_second_cvlan_tag; void* outer_second_cvlan_tag; void* inner_second_vid; void* inner_second_cfi; void* inner_second_prio; void* outer_second_vid; void* outer_second_cfi; void* outer_second_prio; void* source_eswitch_owner_vhca_id; void* source_port; void* source_sqn; void* source_vhca_port; void* gre_s_present; void* gre_k_present; void* gre_c_present; } ;
struct TYPE_3__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_4__ {TYPE_1__ nvgre; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bth_dst_qp ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  geneve_oam ; 
 int /*<<< orphan*/  geneve_opt_len ; 
 int /*<<< orphan*/  geneve_protocol_type ; 
 int /*<<< orphan*/  geneve_vni ; 
 int /*<<< orphan*/  gre_c_present ; 
 int /*<<< orphan*/  gre_k_present ; 
 TYPE_2__ gre_key ; 
 int /*<<< orphan*/  gre_protocol ; 
 int /*<<< orphan*/  gre_s_present ; 
 int /*<<< orphan*/  inner_ipv6_flow_label ; 
 int /*<<< orphan*/  inner_second_cfi ; 
 int /*<<< orphan*/  inner_second_cvlan_tag ; 
 int /*<<< orphan*/  inner_second_prio ; 
 int /*<<< orphan*/  inner_second_svlan_tag ; 
 int /*<<< orphan*/  inner_second_vid ; 
 int /*<<< orphan*/  outer_ipv6_flow_label ; 
 int /*<<< orphan*/  outer_second_cfi ; 
 int /*<<< orphan*/  outer_second_cvlan_tag ; 
 int /*<<< orphan*/  outer_second_prio ; 
 int /*<<< orphan*/  outer_second_svlan_tag ; 
 int /*<<< orphan*/  outer_second_vid ; 
 int /*<<< orphan*/  source_eswitch_owner_vhca_id ; 
 int /*<<< orphan*/  source_port ; 
 int /*<<< orphan*/  source_sqn ; 
 int /*<<< orphan*/  source_vhca_port ; 
 int /*<<< orphan*/  vxlan_vni ; 

__attribute__((used)) static void FUNC1(char *mask, struct mlx5dr_match_misc *spec)
{
	spec->gre_c_present = FUNC0(fte_match_set_misc, mask, gre_c_present);
	spec->gre_k_present = FUNC0(fte_match_set_misc, mask, gre_k_present);
	spec->gre_s_present = FUNC0(fte_match_set_misc, mask, gre_s_present);
	spec->source_vhca_port = FUNC0(fte_match_set_misc, mask, source_vhca_port);
	spec->source_sqn = FUNC0(fte_match_set_misc, mask, source_sqn);

	spec->source_port = FUNC0(fte_match_set_misc, mask, source_port);
	spec->source_eswitch_owner_vhca_id = FUNC0(fte_match_set_misc, mask,
						      source_eswitch_owner_vhca_id);

	spec->outer_second_prio = FUNC0(fte_match_set_misc, mask, outer_second_prio);
	spec->outer_second_cfi = FUNC0(fte_match_set_misc, mask, outer_second_cfi);
	spec->outer_second_vid = FUNC0(fte_match_set_misc, mask, outer_second_vid);
	spec->inner_second_prio = FUNC0(fte_match_set_misc, mask, inner_second_prio);
	spec->inner_second_cfi = FUNC0(fte_match_set_misc, mask, inner_second_cfi);
	spec->inner_second_vid = FUNC0(fte_match_set_misc, mask, inner_second_vid);

	spec->outer_second_cvlan_tag =
		FUNC0(fte_match_set_misc, mask, outer_second_cvlan_tag);
	spec->inner_second_cvlan_tag =
		FUNC0(fte_match_set_misc, mask, inner_second_cvlan_tag);
	spec->outer_second_svlan_tag =
		FUNC0(fte_match_set_misc, mask, outer_second_svlan_tag);
	spec->inner_second_svlan_tag =
		FUNC0(fte_match_set_misc, mask, inner_second_svlan_tag);

	spec->gre_protocol = FUNC0(fte_match_set_misc, mask, gre_protocol);

	spec->gre_key_h = FUNC0(fte_match_set_misc, mask, gre_key.nvgre.hi);
	spec->gre_key_l = FUNC0(fte_match_set_misc, mask, gre_key.nvgre.lo);

	spec->vxlan_vni = FUNC0(fte_match_set_misc, mask, vxlan_vni);

	spec->geneve_vni = FUNC0(fte_match_set_misc, mask, geneve_vni);
	spec->geneve_oam = FUNC0(fte_match_set_misc, mask, geneve_oam);

	spec->outer_ipv6_flow_label =
		FUNC0(fte_match_set_misc, mask, outer_ipv6_flow_label);

	spec->inner_ipv6_flow_label =
		FUNC0(fte_match_set_misc, mask, inner_ipv6_flow_label);

	spec->geneve_opt_len = FUNC0(fte_match_set_misc, mask, geneve_opt_len);
	spec->geneve_protocol_type =
		FUNC0(fte_match_set_misc, mask, geneve_protocol_type);

	spec->bth_dst_qp = FUNC0(fte_match_set_misc, mask, bth_dst_qp);
}