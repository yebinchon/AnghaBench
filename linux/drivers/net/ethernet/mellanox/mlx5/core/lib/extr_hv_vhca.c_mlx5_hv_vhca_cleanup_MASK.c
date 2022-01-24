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
struct mlx5_hv_vhca_agent {int dummy; } ;
struct mlx5_hv_vhca {int /*<<< orphan*/  dev; int /*<<< orphan*/  agents_lock; struct mlx5_hv_vhca_agent** agents; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_hv_vhca*) ; 
 size_t MLX5_HV_VHCA_AGENT_CONTROL ; 
 int MLX5_HV_VHCA_AGENT_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_hv_vhca_agent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_hv_vhca_agent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mlx5_hv_vhca *hv_vhca)
{
	struct mlx5_hv_vhca_agent *agent;
	int i;

	if (FUNC0(hv_vhca))
		return;

	agent = hv_vhca->agents[MLX5_HV_VHCA_AGENT_CONTROL];
	if (agent)
		FUNC3(agent);

	FUNC4(&hv_vhca->agents_lock);
	for (i = 0; i < MLX5_HV_VHCA_AGENT_MAX; i++)
		FUNC1(hv_vhca->agents[i]);

	FUNC5(&hv_vhca->agents_lock);

	FUNC2(hv_vhca->dev);
}