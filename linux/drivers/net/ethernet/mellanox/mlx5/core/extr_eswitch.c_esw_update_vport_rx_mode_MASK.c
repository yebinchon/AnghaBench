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
struct TYPE_2__ {int /*<<< orphan*/  trusted; } ;
struct mlx5_vport {int /*<<< orphan*/  enabled; TYPE_1__ info; int /*<<< orphan*/  vport; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*,struct mlx5_vport*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 

__attribute__((used)) static void FUNC3(struct mlx5_eswitch *esw,
				     struct mlx5_vport *vport)
{
	int promisc_all = 0;
	int promisc_uc = 0;
	int promisc_mc = 0;
	int err;

	err = FUNC2(esw->dev,
					   vport->vport,
					   &promisc_uc,
					   &promisc_mc,
					   &promisc_all);
	if (err)
		return;
	FUNC1(esw->dev, "vport[%d] context update rx mode promisc_all=%d, all_multi=%d\n",
		  vport->vport, promisc_all, promisc_mc);

	if (!vport->info.trusted || !vport->enabled) {
		promisc_uc = 0;
		promisc_mc = 0;
		promisc_all = 0;
	}

	FUNC0(esw, vport, promisc_all,
				(promisc_all || promisc_mc));
}