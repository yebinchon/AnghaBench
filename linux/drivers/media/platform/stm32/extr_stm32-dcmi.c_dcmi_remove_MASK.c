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
struct stm32_dcmi {int /*<<< orphan*/  dma_chan; int /*<<< orphan*/  mdev; int /*<<< orphan*/  v4l2_dev; TYPE_1__* vdev; int /*<<< orphan*/  notifier; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct stm32_dcmi* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct stm32_dcmi *dcmi = FUNC3(pdev);

	FUNC4(&pdev->dev);

	FUNC6(&dcmi->notifier);
	FUNC5(&dcmi->notifier);
	FUNC2(&dcmi->vdev->entity);
	FUNC7(&dcmi->v4l2_dev);
	FUNC1(&dcmi->mdev);

	FUNC0(dcmi->dma_chan);

	return 0;
}