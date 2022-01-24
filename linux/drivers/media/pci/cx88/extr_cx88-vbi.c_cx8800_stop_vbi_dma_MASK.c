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
struct cx88_core {int dummy; } ;
struct cx8800_dev {struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MO_PCI_INTMSK ; 
 int /*<<< orphan*/  MO_VID_DMACNTRL ; 
 int /*<<< orphan*/  MO_VID_INTMSK ; 
 int PCI_INT_VIDINT ; 
 int /*<<< orphan*/  VID_CAPTURE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(struct cx8800_dev *dev)
{
	struct cx88_core *core = dev->core;

	/* stop dma */
	FUNC0(MO_VID_DMACNTRL, 0x88);

	/* disable capture */
	FUNC0(VID_CAPTURE_CONTROL, 0x18);

	/* disable irqs */
	FUNC0(MO_PCI_INTMSK, PCI_INT_VIDINT);
	FUNC0(MO_VID_INTMSK, 0x0f0088);
}