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
struct TYPE_2__ {int /*<<< orphan*/ * allow_rule; int /*<<< orphan*/ * drop_rule; } ;
struct mlx5_vport {TYPE_1__ ingress; } ;
struct mlx5_eswitch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx5_eswitch *esw,
				     struct mlx5_vport *vport)
{
	if (!FUNC0(vport->ingress.drop_rule))
		FUNC2(vport->ingress.drop_rule);

	if (!FUNC0(vport->ingress.allow_rule))
		FUNC2(vport->ingress.allow_rule);

	vport->ingress.drop_rule = NULL;
	vport->ingress.allow_rule = NULL;

	FUNC1(esw, vport);
}