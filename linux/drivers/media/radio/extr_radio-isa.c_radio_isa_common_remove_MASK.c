#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct radio_isa_ops {int /*<<< orphan*/  (* s_mute_volume ) (struct radio_isa_card*,int,int /*<<< orphan*/ ) ;} ;
struct radio_isa_card {TYPE_3__* drv; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  io; int /*<<< orphan*/  hdl; int /*<<< orphan*/  vdev; TYPE_2__* volume; } ;
struct TYPE_6__ {int /*<<< orphan*/  card; struct radio_isa_ops* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
struct TYPE_5__ {TYPE_1__ cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radio_isa_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct radio_isa_card*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct radio_isa_card *isa,
				   unsigned region_size)
{
	const struct radio_isa_ops *ops = isa->drv->ops;

	ops->s_mute_volume(isa, true, isa->volume ? isa->volume->cur.val : 0);
	FUNC6(&isa->vdev);
	FUNC3(&isa->hdl);
	FUNC4(&isa->v4l2_dev);
	FUNC1(isa->io, region_size);
	FUNC5(&isa->v4l2_dev, "Removed radio card %s\n", isa->drv->card);
	FUNC0(isa);
	return 0;
}