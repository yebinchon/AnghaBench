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
 int FUNC0 (struct mlx5_eswitch*,struct mlx5_eswitch_rep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*,struct mlx5_eswitch_rep*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx5_eswitch_rep* FUNC4 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlx5_eswitch *esw, u8 rep_type)
{
	struct mlx5_eswitch_rep *rep;
	int err;

	rep = FUNC4(esw, MLX5_VPORT_UPLINK);
	err = FUNC0(esw, rep, rep_type);
	if (err)
		return err;

	if (FUNC2(esw->dev)) {
		rep = FUNC4(esw, MLX5_VPORT_PF);
		err = FUNC0(esw, rep, rep_type);
		if (err)
			goto err_pf;
	}

	if (FUNC3(esw->dev)) {
		rep = FUNC4(esw, MLX5_VPORT_ECPF);
		err = FUNC0(esw, rep, rep_type);
		if (err)
			goto err_ecpf;
	}

	return 0;

err_ecpf:
	if (FUNC2(esw->dev)) {
		rep = FUNC4(esw, MLX5_VPORT_PF);
		FUNC1(esw, rep, rep_type);
	}

err_pf:
	rep = FUNC4(esw, MLX5_VPORT_UPLINK);
	FUNC1(esw, rep, rep_type);
	return err;
}