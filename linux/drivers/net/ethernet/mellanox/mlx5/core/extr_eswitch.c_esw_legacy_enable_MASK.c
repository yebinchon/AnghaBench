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
struct mlx5_eswitch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_LEGACY_SRIOV_VPORT_EVENTS ; 
 int FUNC0 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mlx5_eswitch *esw)
{
	int ret;

	ret = FUNC0(esw);
	if (ret)
		return ret;

	FUNC1(esw, MLX5_LEGACY_SRIOV_VPORT_EVENTS);
	return 0;
}