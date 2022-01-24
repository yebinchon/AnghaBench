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
struct mlx5_hv_vhca_agent {size_t type; int /*<<< orphan*/  (* cleanup ) (struct mlx5_hv_vhca_agent*) ;struct mlx5_hv_vhca* hv_vhca; } ;
struct mlx5_hv_vhca {int /*<<< orphan*/  agents_lock; struct mlx5_hv_vhca_agent** agents; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_hv_vhca_agent*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_hv_vhca*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_hv_vhca_agent*) ; 

void FUNC6(struct mlx5_hv_vhca_agent *agent)
{
	struct mlx5_hv_vhca *hv_vhca = agent->hv_vhca;

	FUNC3(&hv_vhca->agents_lock);

	if (FUNC0(agent != hv_vhca->agents[agent->type])) {
		FUNC4(&hv_vhca->agents_lock);
		return;
	}

	hv_vhca->agents[agent->type] = NULL;
	FUNC4(&hv_vhca->agents_lock);

	if (agent->cleanup)
		agent->cleanup(agent);

	FUNC1(agent);

	FUNC2(hv_vhca);
}