#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fimc_md {int /*<<< orphan*/  media_dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  subdev_notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_subdev_conf_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_md*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_md*) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_md*) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_md*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct fimc_md* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct fimc_md *fmd = FUNC7(pdev);

	if (!fmd)
		return 0;

	FUNC3(fmd);
	FUNC9(&fmd->subdev_notifier);
	FUNC8(&fmd->subdev_notifier);

	FUNC10(&fmd->v4l2_dev);
	FUNC0(&pdev->dev, &dev_attr_subdev_conf_mode);
	FUNC4(fmd);
	FUNC1(fmd);
	FUNC6(&fmd->media_dev);
	FUNC5(&fmd->media_dev);
	FUNC2(fmd);

	return 0;
}