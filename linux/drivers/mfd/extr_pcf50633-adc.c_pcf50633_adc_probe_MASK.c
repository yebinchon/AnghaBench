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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcf50633_adc {int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  pcf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCF50633_IRQ_ADCRDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pcf50633_adc* FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcf50633_adc_irq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pcf50633_adc*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct pcf50633_adc*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct pcf50633_adc *adc;

	adc = FUNC1(&pdev->dev, sizeof(*adc), GFP_KERNEL);
	if (!adc)
		return -ENOMEM;

	adc->pcf = FUNC0(pdev->dev.parent);
	FUNC4(pdev, adc);

	FUNC3(adc->pcf, PCF50633_IRQ_ADCRDY,
					pcf50633_adc_irq, adc);

	FUNC2(&adc->queue_mutex);

	return 0;
}