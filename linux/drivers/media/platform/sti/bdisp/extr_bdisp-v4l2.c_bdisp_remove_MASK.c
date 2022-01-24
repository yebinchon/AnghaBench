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
struct bdisp_dev {int /*<<< orphan*/  clock; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bdisp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bdisp_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct bdisp_dev* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct bdisp_dev *bdisp = FUNC6(pdev);

	FUNC3(bdisp);

	FUNC2(bdisp->dev);

	FUNC7(&pdev->dev);

	FUNC1(bdisp);

	FUNC8(&bdisp->v4l2_dev);

	if (!FUNC0(bdisp->clock))
		FUNC4(bdisp->clock);

	FUNC5(&pdev->dev, "%s driver unloaded\n", pdev->name);

	return 0;
}