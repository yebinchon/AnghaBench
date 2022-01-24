#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct cosm_hw_ops {int dummy; } ;
struct TYPE_5__ {int id; int /*<<< orphan*/ * bus; int /*<<< orphan*/  release; struct device* parent; } ;
struct cosm_device {int index; TYPE_1__ dev; struct cosm_hw_ops* hw_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct cosm_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cosm_bus ; 
 int /*<<< orphan*/  cosm_index_ida ; 
 int /*<<< orphan*/  cosm_release_dev ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct cosm_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct cosm_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

struct cosm_device *
FUNC8(struct device *pdev, struct cosm_hw_ops *hw_ops)
{
	struct cosm_device *cdev;
	int ret;

	cdev = FUNC6(sizeof(*cdev), GFP_KERNEL);
	if (!cdev)
		return FUNC0(-ENOMEM);

	cdev->dev.parent = pdev;
	cdev->dev.release = cosm_release_dev;
	cdev->hw_ops = hw_ops;
	FUNC1(&cdev->dev, cdev);
	cdev->dev.bus = &cosm_bus;

	/* Assign a unique device index and hence name */
	ret = FUNC4(&cosm_index_ida, 0, 0, GFP_KERNEL);
	if (ret < 0)
		goto free_cdev;

	cdev->index = ret;
	cdev->dev.id = ret;
	FUNC2(&cdev->dev, "cosm-dev%u", cdev->index);

	ret = FUNC3(&cdev->dev);
	if (ret)
		goto ida_remove;
	return cdev;
ida_remove:
	FUNC5(&cosm_index_ida, cdev->index);
free_cdev:
	FUNC7(&cdev->dev);
	return FUNC0(ret);
}