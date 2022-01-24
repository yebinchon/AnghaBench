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
struct platform_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct gsc_dev {int num_clocks; int /*<<< orphan*/ * clock; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gsc_dev*) ; 
 struct gsc_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct gsc_dev *gsc = FUNC3(pdev);
	int i;

	FUNC5(&pdev->dev);

	FUNC2(gsc);
	FUNC7(&gsc->v4l2_dev);

	FUNC8(&pdev->dev);
	for (i = 0; i < gsc->num_clocks; i++)
		FUNC0(gsc->clock[i]);

	FUNC6(&pdev->dev);
	FUNC4(&pdev->dev);

	FUNC1(&pdev->dev, "%s driver unloaded\n", pdev->name);
	return 0;
}