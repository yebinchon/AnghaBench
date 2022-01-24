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
typedef  size_t u32 ;
struct rvin_group {int /*<<< orphan*/  lock; int /*<<< orphan*/  mdev; struct rvin_dev** vin; int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/ * mdev; } ;
struct rvin_dev {size_t id; TYPE_2__ v4l2_dev; struct rvin_group* group; TYPE_1__* dev; } ;
struct TYPE_3__ {size_t of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t RCAR_VIN_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct rvin_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rvin_group* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (size_t,char*,size_t*) ; 
 struct rvin_group* rvin_group_data ; 
 int FUNC8 (struct rvin_group*,struct rvin_dev*) ; 
 int /*<<< orphan*/  rvin_group_lock ; 
 int /*<<< orphan*/  rvin_group_release ; 
 int /*<<< orphan*/  FUNC9 (struct rvin_dev*,char*,...) ; 

__attribute__((used)) static int FUNC10(struct rvin_dev *vin)
{
	struct rvin_group *group;
	u32 id;
	int ret;

	/* Make sure VIN id is present and sane */
	ret = FUNC7(vin->dev->of_node, "renesas,id", &id);
	if (ret) {
		FUNC9(vin, "%pOF: No renesas,id property found\n",
			vin->dev->of_node);
		return -EINVAL;
	}

	if (id >= RCAR_VIN_NUM) {
		FUNC9(vin, "%pOF: Invalid renesas,id '%u'\n",
			vin->dev->of_node, id);
		return -EINVAL;
	}

	/* Join or create a VIN group */
	FUNC5(&rvin_group_lock);
	if (rvin_group_data) {
		group = rvin_group_data;
		FUNC1(&group->refcount);
	} else {
		group = FUNC4(sizeof(*group), GFP_KERNEL);
		if (!group) {
			ret = -ENOMEM;
			goto err_group;
		}

		ret = FUNC8(group, vin);
		if (ret) {
			FUNC0(group);
			FUNC9(vin, "Failed to initialize group\n");
			goto err_group;
		}

		FUNC2(&group->refcount);

		rvin_group_data = group;
	}
	FUNC6(&rvin_group_lock);

	/* Add VIN to group */
	FUNC5(&group->lock);

	if (group->vin[id]) {
		FUNC9(vin, "Duplicate renesas,id property value %u\n", id);
		FUNC6(&group->lock);
		FUNC3(&group->refcount, rvin_group_release);
		return -EINVAL;
	}

	group->vin[id] = vin;

	vin->id = id;
	vin->group = group;
	vin->v4l2_dev.mdev = &group->mdev;

	FUNC6(&group->lock);

	return 0;
err_group:
	FUNC6(&rvin_group_lock);
	return ret;
}