#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct dw_mci_drv_data* data; } ;
struct dw_mci_drv_data {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct platform_device*,struct dw_mci_drv_data const*) ; 
 int /*<<< orphan*/  dw_mci_rockchip_match ; 
 struct of_device_id* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	const struct dw_mci_drv_data *drv_data;
	const struct of_device_id *match;
	int ret;

	if (!pdev->dev.of_node)
		return -ENODEV;

	match = FUNC1(dw_mci_rockchip_match, pdev->dev.of_node);
	drv_data = match->data;

	FUNC4(&pdev->dev);
	FUNC7(&pdev->dev);
	FUNC3(&pdev->dev);
	FUNC8(&pdev->dev, 50);
	FUNC10(&pdev->dev);

	ret = FUNC0(pdev, drv_data);
	if (ret) {
		FUNC2(&pdev->dev);
		FUNC9(&pdev->dev);
		FUNC6(&pdev->dev);
		return ret;
	}

	FUNC5(&pdev->dev);

	return 0;
}