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
typedef  int u32 ;
struct cx88_core {int dummy; } ;
struct cx8800_dev {int /*<<< orphan*/  slock; int /*<<< orphan*/  vbiq; int /*<<< orphan*/  vidq; struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MO_VBI_GPCNT ; 
 int /*<<< orphan*/  MO_VIDY_GPCNT ; 
 int /*<<< orphan*/  MO_VID_DMACNTRL ; 
 int /*<<< orphan*/  MO_VID_INTMSK ; 
 int /*<<< orphan*/  MO_VID_INTSTAT ; 
 size_t SRAM_CH21 ; 
 int /*<<< orphan*/  VID_CAPTURE_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_core*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cx88_sram_channels ; 
 int /*<<< orphan*/  cx88_vid_irqs ; 
 int /*<<< orphan*/  FUNC3 (struct cx88_core*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ irq_debug ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct cx8800_dev *dev)
{
	struct cx88_core *core = dev->core;
	u32 status, mask, count;

	status = FUNC5(MO_VID_INTSTAT);
	mask   = FUNC5(MO_VID_INTMSK);
	if (0 == (status & mask))
		return;
	FUNC6(MO_VID_INTSTAT, status);
	if (irq_debug  ||  (status & mask & ~0xff))
		FUNC1("irq vid",
				   cx88_vid_irqs, FUNC0(cx88_vid_irqs),
				   status, mask);

	/* risc op code error */
	if (status & (1 << 16)) {
		FUNC7("video risc op code error\n");
		FUNC4(MO_VID_DMACNTRL, 0x11);
		FUNC4(VID_CAPTURE_CONTROL, 0x06);
		FUNC2(core, &cx88_sram_channels[SRAM_CH21]);
	}

	/* risc1 y */
	if (status & 0x01) {
		FUNC8(&dev->slock);
		count = FUNC5(MO_VIDY_GPCNT);
		FUNC3(core, &dev->vidq, count);
		FUNC9(&dev->slock);
	}

	/* risc1 vbi */
	if (status & 0x08) {
		FUNC8(&dev->slock);
		count = FUNC5(MO_VBI_GPCNT);
		FUNC3(core, &dev->vbiq, count);
		FUNC9(&dev->slock);
	}
}