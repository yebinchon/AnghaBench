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
struct TYPE_2__ {int /*<<< orphan*/ * drop_rule; int /*<<< orphan*/ * allowed_vlan; } ;
struct mlx5_vport {TYPE_1__ egress; } ;
struct mlx5_eswitch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct mlx5_eswitch *esw,
				    struct mlx5_vport *vport)
{
	if (!FUNC0(vport->egress.allowed_vlan))
		FUNC1(vport->egress.allowed_vlan);

	if (!FUNC0(vport->egress.drop_rule))
		FUNC1(vport->egress.drop_rule);

	vport->egress.allowed_vlan = NULL;
	vport->egress.drop_rule = NULL;
}