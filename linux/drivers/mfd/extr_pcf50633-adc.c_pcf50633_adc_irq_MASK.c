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
struct pcf50633_adc_request {int /*<<< orphan*/  callback_param; int /*<<< orphan*/  (* callback ) (struct pcf50633*,int /*<<< orphan*/ ,int) ;} ;
struct pcf50633_adc {int queue_head; int /*<<< orphan*/  queue_mutex; struct pcf50633_adc_request** queue; struct pcf50633* pcf; } ;
struct pcf50633 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PCF50633_MAX_ADC_FIFO_DEPTH ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct pcf50633*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcf50633_adc_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pcf50633*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pcf50633*) ; 

__attribute__((used)) static void FUNC8(int irq, void *data)
{
	struct pcf50633_adc *adc = data;
	struct pcf50633 *pcf = adc->pcf;
	struct pcf50633_adc_request *req;
	int head, res;

	FUNC4(&adc->queue_mutex);
	head = adc->queue_head;

	req = adc->queue[head];
	if (FUNC0(!req)) {
		FUNC2(pcf->dev, "pcf50633-adc irq: ADC queue empty!\n");
		FUNC5(&adc->queue_mutex);
		return;
	}
	adc->queue[head] = NULL;
	adc->queue_head = (head + 1) &
				      (PCF50633_MAX_ADC_FIFO_DEPTH - 1);

	res = FUNC1(pcf);
	FUNC7(pcf);

	FUNC5(&adc->queue_mutex);

	req->callback(pcf, req->callback_param, res);
	FUNC3(req);
}