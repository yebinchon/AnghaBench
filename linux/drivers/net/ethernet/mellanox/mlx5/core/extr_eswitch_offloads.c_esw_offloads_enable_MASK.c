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
struct TYPE_2__ {int /*<<< orphan*/  termtbl_mutex; int /*<<< orphan*/  encap; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; TYPE_1__ offloads; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ESWITCH_ENCAP_MODE_BASIC ; 
 int /*<<< orphan*/  DEVLINK_ESWITCH_ENCAP_MODE_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_VPORT_UC_ADDR_CHANGE ; 
 int /*<<< orphan*/  decap ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*) ; 
 int FUNC2 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_eswitch*) ; 
 int FUNC4 (struct mlx5_eswitch*) ; 
 int FUNC5 (struct mlx5_eswitch*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reformat ; 

int FUNC11(struct mlx5_eswitch *esw)
{
	int err;

	if (FUNC0(esw->dev, reformat) &&
	    FUNC0(esw->dev, decap))
		esw->offloads.encap = DEVLINK_ESWITCH_ENCAP_MODE_BASIC;
	else
		esw->offloads.encap = DEVLINK_ESWITCH_ENCAP_MODE_NONE;

	FUNC9(esw->dev);
	err = FUNC4(esw);
	if (err)
		goto err_steering_init;

	err = FUNC5(esw, true);
	if (err)
		goto err_vport_metadata;

	FUNC7(esw, MLX5_VPORT_UC_ADDR_CHANGE);

	err = FUNC2(esw);
	if (err)
		goto err_reps;

	FUNC1(esw);
	FUNC10(&esw->offloads.termtbl_mutex);

	return 0;

err_reps:
	FUNC6(esw);
	FUNC5(esw, false);
err_vport_metadata:
	FUNC3(esw);
err_steering_init:
	FUNC8(esw->dev);
	return err;
}