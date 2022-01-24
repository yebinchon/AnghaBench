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
struct vpfe_device {int /*<<< orphan*/  video_dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  notifier; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct vpfe_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,struct vpfe_device*,char*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct vpfe_device *vpfe = FUNC0(pdev);

	FUNC6(2, vpfe, "vpfe_remove\n");

	FUNC1(&pdev->dev);

	FUNC3(&vpfe->notifier);
	FUNC2(&vpfe->notifier);
	FUNC4(&vpfe->v4l2_dev);
	FUNC5(&vpfe->video_dev);

	return 0;
}