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
struct TYPE_2__ {int /*<<< orphan*/ * acl; int /*<<< orphan*/ * drop_grp; int /*<<< orphan*/ * allowed_vlans_grp; } ;
struct mlx5_vport {TYPE_1__ egress; int /*<<< orphan*/  vport; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5_eswitch *esw,
				  struct mlx5_vport *vport)
{
	if (FUNC0(vport->egress.acl))
		return;

	FUNC1(esw->dev, "Destroy vport[%d] E-Switch egress ACL\n", vport->vport);

	FUNC2(esw, vport);
	FUNC3(vport->egress.allowed_vlans_grp);
	FUNC3(vport->egress.drop_grp);
	FUNC4(vport->egress.acl);
	vport->egress.allowed_vlans_grp = NULL;
	vport->egress.drop_grp = NULL;
	vport->egress.acl = NULL;
}