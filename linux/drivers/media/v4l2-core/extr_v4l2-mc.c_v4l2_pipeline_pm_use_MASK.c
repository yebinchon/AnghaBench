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
struct TYPE_2__ {struct media_device* mdev; } ;
struct media_entity {scalar_t__ use_count; TYPE_1__ graph_obj; } ;
struct media_device {int /*<<< orphan*/  graph_mutex; int /*<<< orphan*/  pm_count_walk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct media_entity*,int,int /*<<< orphan*/ *) ; 

int FUNC4(struct media_entity *entity, int use)
{
	struct media_device *mdev = entity->graph_obj.mdev;
	int change = use ? 1 : -1;
	int ret;

	FUNC1(&mdev->graph_mutex);

	/* Apply use count to node. */
	entity->use_count += change;
	FUNC0(entity->use_count < 0);

	/* Apply power change to connected non-nodes. */
	ret = FUNC3(entity, change, &mdev->pm_count_walk);
	if (ret < 0)
		entity->use_count -= change;

	FUNC2(&mdev->graph_mutex);

	return ret;
}