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
struct via_camera {TYPE_1__* viadev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int VCR_IC_EAV ; 
 int VCR_IC_EVBI ; 
 int VCR_IC_FFULL ; 
 int /*<<< orphan*/  VCR_INTCTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct via_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct via_camera*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct via_camera *cam = data;
	irqreturn_t ret = IRQ_NONE;
	int icv;

	/*
	 * All we do here is to clear the interrupts and tell
	 * the handler thread to wake up.
	 */
	FUNC0(&cam->viadev->reg_lock);
	icv = FUNC2(cam, VCR_INTCTRL);
	if (icv & VCR_IC_EAV) {
		icv |= VCR_IC_EAV|VCR_IC_EVBI|VCR_IC_FFULL;
		FUNC3(cam, VCR_INTCTRL, icv);
		ret = IRQ_WAKE_THREAD;
	}
	FUNC1(&cam->viadev->reg_lock);
	return ret;
}