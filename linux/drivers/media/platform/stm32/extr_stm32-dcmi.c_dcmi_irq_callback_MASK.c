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
struct stm32_dcmi {int /*<<< orphan*/  irqlock; int /*<<< orphan*/  regs; int /*<<< orphan*/  misr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DCMI_ICR ; 
 int /*<<< orphan*/  DCMI_MIS ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int IT_ERR ; 
 int IT_FRAME ; 
 int IT_OVR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *arg)
{
	struct stm32_dcmi *dcmi = arg;
	unsigned long flags;

	FUNC2(&dcmi->irqlock, flags);

	dcmi->misr = FUNC0(dcmi->regs, DCMI_MIS);

	/* Clear interrupt */
	FUNC1(dcmi->regs, DCMI_ICR, IT_FRAME | IT_OVR | IT_ERR);

	FUNC3(&dcmi->irqlock, flags);

	return IRQ_WAKE_THREAD;
}