#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * dev; } ;
struct xvtc_device {TYPE_1__ xvip; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct xvtc_device* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,struct xvtc_device*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct xvtc_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct xvtc_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct xvtc_device *xvtc;
	int ret;

	xvtc = FUNC0(&pdev->dev, sizeof(*xvtc), GFP_KERNEL);
	if (!xvtc)
		return -ENOMEM;

	xvtc->xvip.dev = &pdev->dev;

	ret = FUNC4(xvtc);
	if (ret < 0)
		return ret;

	ret = FUNC2(&xvtc->xvip);
	if (ret < 0)
		return ret;

	FUNC1(pdev, xvtc);

	FUNC3(&xvtc->xvip);

	FUNC5(xvtc);

	return 0;
}