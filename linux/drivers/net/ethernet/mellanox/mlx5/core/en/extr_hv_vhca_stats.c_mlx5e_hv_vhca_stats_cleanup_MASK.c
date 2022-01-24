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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct mlx5e_priv {TYPE_1__ stats_agent; } ;
struct mlx5_hv_vhca_agent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC1 (struct mlx5_hv_vhca_agent*) ; 

__attribute__((used)) static void FUNC2(struct mlx5_hv_vhca_agent *agent)
{
	struct mlx5e_priv *priv = FUNC1(agent);

	FUNC0(&priv->stats_agent.work);
}