#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int (* fill_stats ) (struct mlx5e_priv*,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int mlx5e_num_stats_grps ; 
 TYPE_1__* mlx5e_stats_grps ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5e_priv*,int /*<<< orphan*/ *,int) ; 

void FUNC4(struct mlx5e_priv *priv,
				     struct ethtool_stats *stats, u64 *data)
{
	int i, idx = 0;

	FUNC1(&priv->state_lock);
	FUNC0(priv);
	FUNC2(&priv->state_lock);

	for (i = 0; i < mlx5e_num_stats_grps; i++)
		idx = mlx5e_stats_grps[i].fill_stats(priv, data, idx);
}