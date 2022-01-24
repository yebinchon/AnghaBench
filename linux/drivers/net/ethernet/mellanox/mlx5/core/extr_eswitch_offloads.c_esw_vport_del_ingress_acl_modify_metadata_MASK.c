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
struct TYPE_2__ {int /*<<< orphan*/ * modify_metadata_rule; int /*<<< orphan*/  modify_metadata; } ;
struct mlx5_vport {TYPE_1__ ingress; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct mlx5_eswitch *esw,
					       struct mlx5_vport *vport)
{
	if (vport->ingress.modify_metadata_rule) {
		FUNC0(vport->ingress.modify_metadata_rule);
		FUNC1(esw->dev, vport->ingress.modify_metadata);

		vport->ingress.modify_metadata_rule = NULL;
	}
}