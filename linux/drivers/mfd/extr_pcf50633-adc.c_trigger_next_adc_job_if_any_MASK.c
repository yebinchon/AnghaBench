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
struct pcf50633_adc {int queue_head; TYPE_1__** queue; } ;
struct pcf50633 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  avg; int /*<<< orphan*/  mux; } ;

/* Variables and functions */
 struct pcf50633_adc* FUNC0 (struct pcf50633*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcf50633*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pcf50633 *pcf)
{
	struct pcf50633_adc *adc = FUNC0(pcf);
	int head;

	head = adc->queue_head;

	if (!adc->queue[head])
		return;

	FUNC1(pcf, adc->queue[head]->mux, adc->queue[head]->avg);
}