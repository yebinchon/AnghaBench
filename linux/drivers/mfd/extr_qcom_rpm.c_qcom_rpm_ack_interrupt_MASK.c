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
typedef  int u32 ;
struct qcom_rpm {int ack_status; int /*<<< orphan*/  ack; int /*<<< orphan*/  dev; TYPE_1__* data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int ack_sel_size; scalar_t__ ack_ctx_off; scalar_t__ ack_sel_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_rpm*,scalar_t__) ; 
 int RPM_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev)
{
	struct qcom_rpm *rpm = dev;
	u32 ack;
	int i;

	ack = FUNC3(FUNC0(rpm, rpm->data->ack_ctx_off));
	for (i = 0; i < rpm->data->ack_sel_size; i++)
		FUNC5(0,
			FUNC0(rpm, rpm->data->ack_sel_off + i));
	FUNC4(0, FUNC0(rpm, rpm->data->ack_ctx_off));

	if (ack & RPM_NOTIFICATION) {
		FUNC2(rpm->dev, "ignoring notification!\n");
	} else {
		rpm->ack_status = ack;
		FUNC1(&rpm->ack);
	}

	return IRQ_HANDLED;
}