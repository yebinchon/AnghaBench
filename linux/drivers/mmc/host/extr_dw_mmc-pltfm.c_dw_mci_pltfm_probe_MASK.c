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
struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct dw_mci_drv_data* data; } ;
struct dw_mci_drv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dw_mci_pltfm_match ; 
 int FUNC0 (struct platform_device*,struct dw_mci_drv_data const*) ; 
 struct of_device_id* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	const struct dw_mci_drv_data *drv_data = NULL;
	const struct of_device_id *match;

	if (pdev->dev.of_node) {
		match = FUNC1(dw_mci_pltfm_match, pdev->dev.of_node);
		drv_data = match->data;
	}

	return FUNC0(pdev, drv_data);
}