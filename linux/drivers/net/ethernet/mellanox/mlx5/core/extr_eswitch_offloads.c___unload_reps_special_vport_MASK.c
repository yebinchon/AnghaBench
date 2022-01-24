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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_eswitch_rep {int dummy; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_VPORT_ECPF ; 
 int /*<<< orphan*/  MLX5_VPORT_PF ; 
 int /*<<< orphan*/  MLX5_VPORT_UPLINK ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*,struct mlx5_eswitch_rep*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx5_eswitch_rep* FUNC3 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlx5_eswitch *esw, u8 rep_type)
{
	struct mlx5_eswitch_rep *rep;

	if (FUNC2(esw->dev)) {
		rep = FUNC3(esw, MLX5_VPORT_ECPF);
		FUNC0(esw, rep, rep_type);
	}

	if (FUNC1(esw->dev)) {
		rep = FUNC3(esw, MLX5_VPORT_PF);
		FUNC0(esw, rep, rep_type);
	}

	rep = FUNC3(esw, MLX5_VPORT_UPLINK);
	FUNC0(esw, rep, rep_type);
}