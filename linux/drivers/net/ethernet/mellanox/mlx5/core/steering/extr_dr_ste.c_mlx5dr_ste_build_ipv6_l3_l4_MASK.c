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
struct mlx5dr_ste_build {int rx; int inner; int /*<<< orphan*/ * ste_build_tag_func; int /*<<< orphan*/  bit_mask; int /*<<< orphan*/  byte_mask; int /*<<< orphan*/  lu_type; } ;
struct mlx5dr_match_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ETHL4 ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_match_param*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dr_ste_build_ipv6_l3_l4_tag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct mlx5dr_ste_build *sb,
				 struct mlx5dr_match_param *mask,
				 bool inner, bool rx)
{
	FUNC1(mask, inner, sb->bit_mask);

	sb->rx = rx;
	sb->inner = inner;
	sb->lu_type = FUNC0(ETHL4, rx, inner);
	sb->byte_mask = FUNC2(sb->bit_mask);
	sb->ste_build_tag_func = &dr_ste_build_ipv6_l3_l4_tag;
}