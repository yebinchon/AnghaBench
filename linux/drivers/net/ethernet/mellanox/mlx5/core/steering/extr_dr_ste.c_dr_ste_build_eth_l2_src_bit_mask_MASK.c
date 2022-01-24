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
struct mlx5dr_match_spec {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5dr_match_spec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_match_param*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eth_l2_src ; 
 int /*<<< orphan*/  smac_15_0 ; 
 int /*<<< orphan*/  smac_47_16 ; 

__attribute__((used)) static void FUNC2(struct mlx5dr_match_param *value,
					     bool inner, u8 *bit_mask)
{
	struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;

	FUNC0(eth_l2_src, bit_mask, smac_47_16, mask, smac_47_16);
	FUNC0(eth_l2_src, bit_mask, smac_15_0, mask, smac_15_0);

	FUNC1(value, inner, bit_mask);
}