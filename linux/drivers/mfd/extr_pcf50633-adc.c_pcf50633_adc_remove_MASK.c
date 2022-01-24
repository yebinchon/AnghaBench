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
struct platform_device {int dummy; } ;
struct pcf50633_adc {int queue_head; int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/ * queue; TYPE_1__* pcf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCF50633_IRQ_ADCRDY ; 
 int PCF50633_MAX_ADC_FIFO_DEPTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct pcf50633_adc* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct pcf50633_adc *adc = FUNC6(pdev);
	int i, head;

	FUNC5(adc->pcf, PCF50633_IRQ_ADCRDY);

	FUNC3(&adc->queue_mutex);
	head = adc->queue_head;

	if (FUNC0(adc->queue[head]))
		FUNC1(adc->pcf->dev,
			"adc driver removed with request pending\n");

	for (i = 0; i < PCF50633_MAX_ADC_FIFO_DEPTH; i++)
		FUNC2(adc->queue[i]);

	FUNC4(&adc->queue_mutex);

	return 0;
}