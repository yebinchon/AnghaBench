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
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct sun4i_csi {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__ vdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct file*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct sun4i_csi* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct sun4i_csi *csi = FUNC6(file);
	int ret;

	ret = FUNC0(&csi->lock);
	if (ret)
		return ret;

	ret = FUNC2(csi->dev);
	if (ret < 0)
		goto err_pm_put;

	ret = FUNC5(&csi->vdev.entity, 1);
	if (ret)
		goto err_pm_put;

	ret = FUNC4(file);
	if (ret)
		goto err_pipeline_pm_put;

	FUNC1(&csi->lock);

	return 0;

err_pipeline_pm_put:
	FUNC5(&csi->vdev.entity, 0);

err_pm_put:
	FUNC3(csi->dev);
	FUNC1(&csi->lock);

	return ret;
}