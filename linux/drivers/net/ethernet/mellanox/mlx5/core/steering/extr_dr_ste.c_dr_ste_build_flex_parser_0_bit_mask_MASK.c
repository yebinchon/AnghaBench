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
struct mlx5dr_match_misc2 {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc2 misc2; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5dr_match_misc2*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5dr_match_misc2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flex_parser_0 ; 
 int /*<<< orphan*/  outer_first_mpls_over_gre_exp ; 
 int /*<<< orphan*/  outer_first_mpls_over_gre_label ; 
 int /*<<< orphan*/  outer_first_mpls_over_gre_s_bos ; 
 int /*<<< orphan*/  outer_first_mpls_over_gre_ttl ; 
 int /*<<< orphan*/  outer_first_mpls_over_udp_exp ; 
 int /*<<< orphan*/  outer_first_mpls_over_udp_label ; 
 int /*<<< orphan*/  outer_first_mpls_over_udp_s_bos ; 
 int /*<<< orphan*/  outer_first_mpls_over_udp_ttl ; 
 int /*<<< orphan*/  parser_3_exp ; 
 int /*<<< orphan*/  parser_3_label ; 
 int /*<<< orphan*/  parser_3_s_bos ; 
 int /*<<< orphan*/  parser_3_ttl ; 

__attribute__((used)) static void FUNC2(struct mlx5dr_match_param *value,
						bool inner, u8 *bit_mask)
{
	struct mlx5dr_match_misc2 *misc_2_mask = &value->misc2;

	if (FUNC0(misc_2_mask)) {
		FUNC1(flex_parser_0, bit_mask, parser_3_label,
				  misc_2_mask, outer_first_mpls_over_gre_label);

		FUNC1(flex_parser_0, bit_mask, parser_3_exp,
				  misc_2_mask, outer_first_mpls_over_gre_exp);

		FUNC1(flex_parser_0, bit_mask, parser_3_s_bos,
				  misc_2_mask, outer_first_mpls_over_gre_s_bos);

		FUNC1(flex_parser_0, bit_mask, parser_3_ttl,
				  misc_2_mask, outer_first_mpls_over_gre_ttl);
	} else {
		FUNC1(flex_parser_0, bit_mask, parser_3_label,
				  misc_2_mask, outer_first_mpls_over_udp_label);

		FUNC1(flex_parser_0, bit_mask, parser_3_exp,
				  misc_2_mask, outer_first_mpls_over_udp_exp);

		FUNC1(flex_parser_0, bit_mask, parser_3_s_bos,
				  misc_2_mask, outer_first_mpls_over_udp_s_bos);

		FUNC1(flex_parser_0, bit_mask, parser_3_ttl,
				  misc_2_mask, outer_first_mpls_over_udp_ttl);
	}
}