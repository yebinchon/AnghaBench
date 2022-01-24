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
struct TYPE_2__ {int /*<<< orphan*/  encap; } ;
struct mlx5_eswitch {TYPE_1__ offloads; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ESWITCH_ENCAP_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_eswitch*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct mlx5_eswitch *esw)
{
	FUNC0(esw);
	FUNC2(esw);
	FUNC4(esw);
	FUNC3(esw, false);
	FUNC1(esw);
	FUNC5(esw->dev);
	esw->offloads.encap = DEVLINK_ESWITCH_ENCAP_MODE_NONE;
}