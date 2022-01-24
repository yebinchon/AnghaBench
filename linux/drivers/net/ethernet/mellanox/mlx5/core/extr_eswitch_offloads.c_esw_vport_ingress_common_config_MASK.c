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
struct mlx5_vport {int /*<<< orphan*/  vport; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int FUNC5 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int FUNC6 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  prio_tag_required ; 

__attribute__((used)) static int FUNC10(struct mlx5_eswitch *esw,
					   struct mlx5_vport *vport)
{
	int err;

	if (!FUNC9(esw) &&
	    !FUNC0(esw->dev, prio_tag_required))
		return 0;

	FUNC3(esw, vport);

	err = FUNC5(esw, vport);
	if (err) {
		FUNC7(esw->dev,
			 "failed to enable ingress acl (%d) on vport[%d]\n",
			 err, vport->vport);
		return err;
	}

	FUNC1(esw->dev,
		  "vport[%d] configure ingress rules\n", vport->vport);

	if (FUNC9(esw)) {
		err = FUNC2(esw, vport);
		if (err)
			goto out;
	}

	if (FUNC0(esw->dev, prio_tag_required) &&
	    FUNC8(esw, vport->vport)) {
		err = FUNC6(esw, vport);
		if (err)
			goto out;
	}

out:
	if (err)
		FUNC4(esw, vport);
	return err;
}