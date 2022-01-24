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
struct mlx5e_tc_flow {int /*<<< orphan*/  unready; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_tc_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static void FUNC2(struct mlx5e_tc_flow *flow,
			     struct list_head *unready_flows)
{
	FUNC0(flow, NOT_READY);
	FUNC1(&flow->unready, unready_flows);
}