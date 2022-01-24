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
struct mlx5_hv_vhca_agent {struct mlx5_hv_vhca_agent** agents; int /*<<< orphan*/  dev; } ;
struct mlx5_hv_vhca {struct mlx5_hv_vhca** agents; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_hv_vhca_agent*) ; 
 size_t MLX5_HV_VHCA_AGENT_CONTROL ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mlx5_hv_vhca_agent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx5_hv_vhca_agent* FUNC3 (struct mlx5_hv_vhca_agent*) ; 
 int /*<<< orphan*/  mlx5_hv_vhca_invalidate ; 

int FUNC4(struct mlx5_hv_vhca *hv_vhca)
{
	struct mlx5_hv_vhca_agent *agent;
	int err;

	if (FUNC0(hv_vhca))
		return FUNC0(hv_vhca);

	err = FUNC1(hv_vhca->dev, hv_vhca,
					  mlx5_hv_vhca_invalidate);
	if (err)
		return err;

	agent = FUNC3(hv_vhca);
	if (FUNC0(agent)) {
		FUNC2(hv_vhca->dev);
		return FUNC0(agent);
	}

	hv_vhca->agents[MLX5_HV_VHCA_AGENT_CONTROL] = agent;

	return 0;
}