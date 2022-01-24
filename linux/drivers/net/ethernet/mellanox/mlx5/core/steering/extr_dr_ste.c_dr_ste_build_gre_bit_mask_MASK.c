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
struct mlx5dr_match_misc {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5dr_match_misc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gre ; 
 int /*<<< orphan*/  gre_c_present ; 
 int /*<<< orphan*/  gre_k_present ; 
 int /*<<< orphan*/  gre_key_h ; 
 int /*<<< orphan*/  gre_key_l ; 
 int /*<<< orphan*/  gre_protocol ; 
 int /*<<< orphan*/  gre_s_present ; 

__attribute__((used)) static void FUNC1(struct mlx5dr_match_param *value,
				      bool inner, u8 *bit_mask)
{
	struct mlx5dr_match_misc *misc_mask = &value->misc;

	FUNC0(gre, bit_mask, gre_protocol, misc_mask, gre_protocol);
	FUNC0(gre, bit_mask, gre_k_present, misc_mask, gre_k_present);
	FUNC0(gre, bit_mask, gre_key_h, misc_mask, gre_key_h);
	FUNC0(gre, bit_mask, gre_key_l, misc_mask, gre_key_l);

	FUNC0(gre, bit_mask, gre_c_present, misc_mask, gre_c_present);
	FUNC0(gre, bit_mask, gre_s_present, misc_mask, gre_s_present);
}