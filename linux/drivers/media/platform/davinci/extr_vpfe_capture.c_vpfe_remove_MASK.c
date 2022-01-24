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
struct vpfe_device {int /*<<< orphan*/  video_dev; int /*<<< orphan*/  v4l2_dev; struct vpfe_device* sd; int /*<<< orphan*/  ccdc_irq0; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 struct vpfe_device* ccdc_cfg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct vpfe_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct vpfe_device*) ; 
 struct vpfe_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct vpfe_device *vpfe_dev = FUNC2(pdev);

	FUNC4(pdev->dev.driver, "vpfe_remove\n");

	FUNC0(vpfe_dev->ccdc_irq0, vpfe_dev);
	FUNC1(vpfe_dev->sd);
	FUNC3(&vpfe_dev->v4l2_dev);
	FUNC5(&vpfe_dev->video_dev);
	FUNC1(vpfe_dev);
	FUNC1(ccdc_cfg);
	return 0;
}