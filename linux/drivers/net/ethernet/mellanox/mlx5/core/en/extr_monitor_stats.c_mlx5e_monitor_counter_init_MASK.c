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
struct mlx5e_priv {int /*<<< orphan*/  update_stats_work; int /*<<< orphan*/  wq; int /*<<< orphan*/  monitor_counters_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  mlx5e_monitor_counters_work ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5e_priv *priv)
{
	FUNC0(&priv->monitor_counters_work, mlx5e_monitor_counters_work);
	FUNC2(priv);
	FUNC3(priv);
	FUNC1(priv);
	FUNC4(priv->wq, &priv->update_stats_work);
}