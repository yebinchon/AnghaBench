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
struct mlx5e_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 

__attribute__((used)) static void FUNC4(struct mlx5e_priv *priv,
			      struct mlx5e_tc_flow *flow)
{
	if (FUNC0(flow)) {
		FUNC2(flow);
		FUNC1(priv, flow);
	} else {
		FUNC3(priv, flow);
	}
}