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
struct pxa_camera_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/ * mclk_clk; int /*<<< orphan*/  notifier; int /*<<< orphan*/ * dma_chans; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct pxa_camera_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_camera_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct pxa_camera_dev *pcdev = FUNC0(&pdev->dev);

	FUNC3(pcdev);
	FUNC2(pcdev->dma_chans[0]);
	FUNC2(pcdev->dma_chans[1]);
	FUNC2(pcdev->dma_chans[2]);

	FUNC5(&pcdev->notifier);
	FUNC4(&pcdev->notifier);

	if (pcdev->mclk_clk) {
		FUNC6(pcdev->mclk_clk);
		pcdev->mclk_clk = NULL;
	}

	FUNC7(&pcdev->v4l2_dev);

	FUNC1(&pdev->dev, "PXA Camera driver unloaded\n");

	return 0;
}