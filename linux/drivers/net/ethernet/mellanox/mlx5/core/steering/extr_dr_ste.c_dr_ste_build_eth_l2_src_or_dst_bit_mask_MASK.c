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
struct mlx5dr_match_spec {scalar_t__ outer_second_svlan_tag; scalar_t__ outer_second_cvlan_tag; scalar_t__ inner_second_svlan_tag; scalar_t__ inner_second_cvlan_tag; scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec misc; struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;
struct mlx5dr_match_misc {scalar_t__ outer_second_svlan_tag; scalar_t__ outer_second_cvlan_tag; scalar_t__ inner_second_svlan_tag; scalar_t__ inner_second_cvlan_tag; scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5dr_match_spec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5dr_match_spec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  eth_l2_src ; 
 int /*<<< orphan*/  ethertype ; 
 int /*<<< orphan*/  first_cfi ; 
 int /*<<< orphan*/  first_prio ; 
 int /*<<< orphan*/  first_priority ; 
 int /*<<< orphan*/  first_vid ; 
 int /*<<< orphan*/  first_vlan_id ; 
 int /*<<< orphan*/  first_vlan_qualifier ; 
 int /*<<< orphan*/  frag ; 
 int /*<<< orphan*/  inner_second_cfi ; 
 int /*<<< orphan*/  inner_second_prio ; 
 int /*<<< orphan*/  inner_second_vid ; 
 int /*<<< orphan*/  ip_fragmented ; 
 int /*<<< orphan*/  ip_version ; 
 int /*<<< orphan*/  l3_ethertype ; 
 int /*<<< orphan*/  l3_type ; 
 int /*<<< orphan*/  outer_second_cfi ; 
 int /*<<< orphan*/  outer_second_prio ; 
 int /*<<< orphan*/  outer_second_vid ; 
 int /*<<< orphan*/  second_cfi ; 
 int /*<<< orphan*/  second_priority ; 
 int /*<<< orphan*/  second_vlan_id ; 
 int /*<<< orphan*/  second_vlan_qualifier ; 
 int /*<<< orphan*/  ste_eth_l2_src ; 

__attribute__((used)) static void
FUNC3(struct mlx5dr_match_param *value,
					bool inner, u8 *bit_mask)
{
	struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;
	struct mlx5dr_match_misc *misc_mask = &value->misc;

	FUNC1(eth_l2_src, bit_mask, first_vlan_id, mask, first_vid);
	FUNC1(eth_l2_src, bit_mask, first_cfi, mask, first_cfi);
	FUNC1(eth_l2_src, bit_mask, first_priority, mask, first_prio);
	FUNC1(eth_l2_src, bit_mask, ip_fragmented, mask, frag);
	FUNC1(eth_l2_src, bit_mask, l3_ethertype, mask, ethertype);
	FUNC0(eth_l2_src, bit_mask, l3_type, mask, ip_version);

	if (mask->svlan_tag || mask->cvlan_tag) {
		FUNC2(ste_eth_l2_src, bit_mask, first_vlan_qualifier, -1);
		mask->cvlan_tag = 0;
		mask->svlan_tag = 0;
	}

	if (inner) {
		if (misc_mask->inner_second_cvlan_tag ||
		    misc_mask->inner_second_svlan_tag) {
			FUNC2(ste_eth_l2_src, bit_mask, second_vlan_qualifier, -1);
			misc_mask->inner_second_cvlan_tag = 0;
			misc_mask->inner_second_svlan_tag = 0;
		}

		FUNC1(eth_l2_src, bit_mask,
				  second_vlan_id, misc_mask, inner_second_vid);
		FUNC1(eth_l2_src, bit_mask,
				  second_cfi, misc_mask, inner_second_cfi);
		FUNC1(eth_l2_src, bit_mask,
				  second_priority, misc_mask, inner_second_prio);
	} else {
		if (misc_mask->outer_second_cvlan_tag ||
		    misc_mask->outer_second_svlan_tag) {
			FUNC2(ste_eth_l2_src, bit_mask, second_vlan_qualifier, -1);
			misc_mask->outer_second_cvlan_tag = 0;
			misc_mask->outer_second_svlan_tag = 0;
		}

		FUNC1(eth_l2_src, bit_mask,
				  second_vlan_id, misc_mask, outer_second_vid);
		FUNC1(eth_l2_src, bit_mask,
				  second_cfi, misc_mask, outer_second_cfi);
		FUNC1(eth_l2_src, bit_mask,
				  second_priority, misc_mask, outer_second_prio);
	}
}