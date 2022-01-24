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
struct mlx5e_tc_flow {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGRESS ; 
 int /*<<< orphan*/  INGRESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5e_tc_flow*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct mlx5e_tc_flow *flow, int flags)
{
	bool dir_ingress = !!(flags & FUNC0(INGRESS));
	bool dir_egress = !!(flags & FUNC0(EGRESS));

	return FUNC1(flow, INGRESS) == dir_ingress &&
		FUNC1(flow, EGRESS) == dir_egress;
}