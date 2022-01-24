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
struct mlx5e_tc_flow {int /*<<< orphan*/  refcnt; } ;
struct mlx5e_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_tc_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  rcu_head ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlx5e_priv *priv,
			   struct mlx5e_tc_flow *flow)
{
	if (FUNC2(&flow->refcnt)) {
		FUNC1(priv, flow);
		FUNC0(flow, rcu_head);
	}
}