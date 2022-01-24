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
struct pxa_camera_dev {int /*<<< orphan*/  task_eof; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ CICR0 ; 
 unsigned long CICR0_EOFM ; 
 scalar_t__ CISR ; 
 unsigned long CISR_EOF ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_camera_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct pxa_camera_dev *pcdev = data;
	unsigned long status, cicr0;

	status = FUNC0(pcdev->base + CISR);
	FUNC2(FUNC3(pcdev),
		"Camera interrupt status 0x%lx\n", status);

	if (!status)
		return IRQ_NONE;

	FUNC1(status, pcdev->base + CISR);

	if (status & CISR_EOF) {
		cicr0 = FUNC0(pcdev->base + CICR0) | CICR0_EOFM;
		FUNC1(cicr0, pcdev->base + CICR0);
		FUNC4(&pcdev->task_eof);
	}

	return IRQ_HANDLED;
}