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
struct mlx5dr_ste_build {scalar_t__ inner; } ;
struct mlx5dr_match_spec {int smac_47_16; int smac_15_0; scalar_t__ ip_version; scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;
struct dr_hw_ste_format {int /*<<< orphan*/ * tag; } ;

/* Variables and functions */
 int DR_STE_CVLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5dr_match_spec*,int /*<<< orphan*/ ) ; 
 int DR_STE_SVLAN ; 
 int EINVAL ; 
 scalar_t__ IP_VERSION_IPV4 ; 
 scalar_t__ IP_VERSION_IPV6 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int STE_IPV4 ; 
 int STE_IPV6 ; 
 int /*<<< orphan*/  dmac_15_0 ; 
 int /*<<< orphan*/  dmac_47_16 ; 
 int /*<<< orphan*/  eth_l2_src_dst ; 
 int /*<<< orphan*/  first_cfi ; 
 int /*<<< orphan*/  first_prio ; 
 int /*<<< orphan*/  first_priority ; 
 int /*<<< orphan*/  first_vid ; 
 int /*<<< orphan*/  first_vlan_id ; 
 int /*<<< orphan*/  first_vlan_qualifier ; 
 int /*<<< orphan*/  l3_type ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  smac_31_0 ; 
 int /*<<< orphan*/  smac_47_32 ; 
 int /*<<< orphan*/  ste_eth_l2_src_dst ; 

__attribute__((used)) static int FUNC3(struct mlx5dr_match_param *value,
					   struct mlx5dr_ste_build *sb,
					   u8 *hw_ste_p)
{
	struct mlx5dr_match_spec *spec = sb->inner ? &value->inner : &value->outer;
	struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
	u8 *tag = hw_ste->tag;

	FUNC0(eth_l2_src_dst, tag, dmac_47_16, spec, dmac_47_16);
	FUNC0(eth_l2_src_dst, tag, dmac_15_0, spec, dmac_15_0);

	if (spec->smac_47_16 || spec->smac_15_0) {
		FUNC1(ste_eth_l2_src_dst, tag, smac_47_32,
			 spec->smac_47_16 >> 16);
		FUNC1(ste_eth_l2_src_dst, tag, smac_31_0,
			 spec->smac_47_16 << 16 | spec->smac_15_0);
		spec->smac_47_16 = 0;
		spec->smac_15_0 = 0;
	}

	if (spec->ip_version) {
		if (spec->ip_version == IP_VERSION_IPV4) {
			FUNC1(ste_eth_l2_src_dst, tag, l3_type, STE_IPV4);
			spec->ip_version = 0;
		} else if (spec->ip_version == IP_VERSION_IPV6) {
			FUNC1(ste_eth_l2_src_dst, tag, l3_type, STE_IPV6);
			spec->ip_version = 0;
		} else {
			FUNC2("Unsupported ip_version value\n");
			return -EINVAL;
		}
	}

	FUNC0(eth_l2_src_dst, tag, first_vlan_id, spec, first_vid);
	FUNC0(eth_l2_src_dst, tag, first_cfi, spec, first_cfi);
	FUNC0(eth_l2_src_dst, tag, first_priority, spec, first_prio);

	if (spec->cvlan_tag) {
		FUNC1(ste_eth_l2_src_dst, tag, first_vlan_qualifier, DR_STE_CVLAN);
		spec->cvlan_tag = 0;
	} else if (spec->svlan_tag) {
		FUNC1(ste_eth_l2_src_dst, tag, first_vlan_qualifier, DR_STE_SVLAN);
		spec->svlan_tag = 0;
	}
	return 0;
}