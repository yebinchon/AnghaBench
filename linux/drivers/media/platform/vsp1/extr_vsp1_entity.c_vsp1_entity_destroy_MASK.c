#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  entity; scalar_t__ ctrl_handler; } ;
struct vsp1_entity {TYPE_2__ subdev; int /*<<< orphan*/  config; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (struct vsp1_entity*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vsp1_entity*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct vsp1_entity *entity)
{
	if (entity->ops && entity->ops->destroy)
		entity->ops->destroy(entity);
	if (entity->subdev.ctrl_handler)
		FUNC2(entity->subdev.ctrl_handler);
	FUNC3(entity->config);
	FUNC0(&entity->subdev.entity);
}