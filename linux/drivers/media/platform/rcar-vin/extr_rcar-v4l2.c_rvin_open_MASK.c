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
struct TYPE_4__ {int /*<<< orphan*/  entity; } ;
struct rvin_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; TYPE_2__ vdev; TYPE_1__* info; int /*<<< orphan*/  ctrl_handler; } ;
struct file {struct rvin_dev* private_data; } ;
struct TYPE_3__ {scalar_t__ use_mc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rvin_dev*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct file*) ; 
 int FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct rvin_dev* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct rvin_dev *vin = FUNC10(file);
	int ret;

	ret = FUNC2(vin->dev);
	if (ret < 0)
		return ret;

	ret = FUNC0(&vin->lock);
	if (ret)
		goto err_pm;

	file->private_data = vin;

	ret = FUNC7(file);
	if (ret)
		goto err_unlock;

	if (vin->info->use_mc)
		ret = FUNC9(&vin->vdev.entity, 1);
	else if (FUNC6(file))
		ret = FUNC4(vin, true);

	if (ret < 0)
		goto err_open;

	ret = FUNC5(&vin->ctrl_handler);
	if (ret)
		goto err_power;

	FUNC1(&vin->lock);

	return 0;
err_power:
	if (vin->info->use_mc)
		FUNC9(&vin->vdev.entity, 0);
	else if (FUNC6(file))
		FUNC4(vin, false);
err_open:
	FUNC8(file);
err_unlock:
	FUNC1(&vin->lock);
err_pm:
	FUNC3(vin->dev);

	return ret;
}