#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  work; struct mlx5_hv_vhca_agent* agent; int /*<<< orphan*/  buf; } ;
struct mlx5e_priv {TYPE_2__ stats_agent; int /*<<< orphan*/  netdev; TYPE_1__* mdev; } ;
struct mlx5_hv_vhca_agent {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hv_vhca; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_hv_vhca_agent*) ; 
 int FUNC2 (struct mlx5_hv_vhca_agent*) ; 
 int /*<<< orphan*/  MLX5_HV_VHCA_AGENT_STATS ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_hv_vhca_agent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct mlx5_hv_vhca_agent* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5e_priv*) ; 
 int FUNC7 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  mlx5e_hv_vhca_stats_cleanup ; 
 int /*<<< orphan*/  mlx5e_hv_vhca_stats_control ; 
 int /*<<< orphan*/  mlx5e_hv_vhca_stats_work ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC9(struct mlx5e_priv *priv)
{
	int buf_len = FUNC7(priv);
	struct mlx5_hv_vhca_agent *agent;

	priv->stats_agent.buf = FUNC5(buf_len, GFP_KERNEL);
	if (!priv->stats_agent.buf)
		return -ENOMEM;

	agent = FUNC6(priv->mdev->hv_vhca,
					  MLX5_HV_VHCA_AGENT_STATS,
					  mlx5e_hv_vhca_stats_control, NULL,
					  mlx5e_hv_vhca_stats_cleanup,
					  priv);

	if (FUNC2(agent)) {
		if (FUNC1(agent))
			FUNC8(priv->netdev,
				    "Failed to create hv vhca stats agent, err = %ld\n",
				    FUNC3(agent));

		FUNC4(priv->stats_agent.buf);
		return FUNC2(agent);
	}

	priv->stats_agent.agent = agent;
	FUNC0(&priv->stats_agent.work, mlx5e_hv_vhca_stats_work);

	return 0;
}