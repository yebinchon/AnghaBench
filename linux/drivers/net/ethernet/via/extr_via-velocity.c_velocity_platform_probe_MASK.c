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
struct velocity_info_tbl {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct velocity_info_tbl* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_PLATFORM ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  velocity_of_ids ; 
 int FUNC2 (TYPE_1__*,int,struct velocity_info_tbl const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	const struct of_device_id *of_id;
	const struct velocity_info_tbl *info;
	int irq;

	of_id = FUNC1(velocity_of_ids, &pdev->dev);
	if (!of_id)
		return -EINVAL;
	info = of_id->data;

	irq = FUNC0(pdev->dev.of_node, 0);
	if (!irq)
		return -EINVAL;

	return FUNC2(&pdev->dev, irq, info, BUS_PLATFORM);
}