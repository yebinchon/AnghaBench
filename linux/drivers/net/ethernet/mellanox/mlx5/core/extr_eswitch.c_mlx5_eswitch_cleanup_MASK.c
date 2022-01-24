#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  encap_tbl_lock; TYPE_1__ mod_hdr; } ;
struct mlx5_eswitch {struct mlx5_eswitch* vports; TYPE_2__ offloads; int /*<<< orphan*/  work_queue; TYPE_4__* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * eswitch; } ;
struct TYPE_9__ {TYPE_3__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mlx5_eswitch *esw)
{
	if (!esw || !FUNC0(esw->dev))
		return;

	FUNC2(esw->dev, "cleanup\n");

	esw->dev->priv.eswitch = NULL;
	FUNC1(esw->work_queue);
	FUNC3(esw);
	FUNC5(&esw->offloads.mod_hdr.lock);
	FUNC5(&esw->offloads.encap_tbl_lock);
	FUNC4(esw->vports);
	FUNC4(esw);
}