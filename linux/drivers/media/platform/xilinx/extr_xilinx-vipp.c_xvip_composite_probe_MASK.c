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
struct xvip_composite_device {int /*<<< orphan*/ * dev; int /*<<< orphan*/  notifier; int /*<<< orphan*/  dmas; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct xvip_composite_device* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct xvip_composite_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xvip_composite_device*) ; 
 int FUNC6 (struct xvip_composite_device*) ; 
 int FUNC7 (struct xvip_composite_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct xvip_composite_device *xdev;
	int ret;

	xdev = FUNC2(&pdev->dev, sizeof(*xdev), GFP_KERNEL);
	if (!xdev)
		return -ENOMEM;

	xdev->dev = &pdev->dev;
	FUNC0(&xdev->dmas);
	FUNC4(&xdev->notifier);

	ret = FUNC6(xdev);
	if (ret < 0)
		return ret;

	ret = FUNC7(xdev);
	if (ret < 0)
		goto error;

	FUNC3(pdev, xdev);

	FUNC1(xdev->dev, "device registered\n");

	return 0;

error:
	FUNC5(xdev);
	return ret;
}