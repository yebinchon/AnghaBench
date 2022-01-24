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
struct cx8802_dev {int /*<<< orphan*/  slock; int /*<<< orphan*/  mpegq; struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MO_TS_DMACNTRL ; 
 int /*<<< orphan*/  MO_TS_GPCNT ; 
 int /*<<< orphan*/  MO_TS_INTMSK ; 
 int /*<<< orphan*/  MO_TS_INTSTAT ; 
 size_t SRAM_CH28 ; 
 int /*<<< orphan*/  FUNC1 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  cx88_mpeg_irqs ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx88_core*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cx88_sram_channels ; 
 int /*<<< orphan*/  FUNC4 (struct cx88_core*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct cx8802_dev *dev)
{
	struct cx88_core *core = dev->core;
	u32 status, mask, count;

	FUNC8(1, "\n");
	status = FUNC6(MO_TS_INTSTAT);
	mask   = FUNC6(MO_TS_INTMSK);
	if (0 == (status & mask))
		return;

	FUNC7(MO_TS_INTSTAT, status);

	if (debug || (status & mask & ~0xff))
		FUNC2("irq mpeg ",
				   cx88_mpeg_irqs, FUNC0(cx88_mpeg_irqs),
				   status, mask);

	/* risc op code error */
	if (status & (1 << 16)) {
		FUNC9("mpeg risc op code error\n");
		FUNC5(MO_TS_DMACNTRL, 0x11);
		FUNC3(dev->core,
				       &cx88_sram_channels[SRAM_CH28]);
	}

	/* risc1 y */
	if (status & 0x01) {
		FUNC8(1, "wake up\n");
		FUNC10(&dev->slock);
		count = FUNC6(MO_TS_GPCNT);
		FUNC4(dev->core, &dev->mpegq, count);
		FUNC11(&dev->slock);
	}

	/* other general errors */
	if (status & 0x1f0100) {
		FUNC8(0, "general errors: 0x%08x\n", status & 0x1f0100);
		FUNC10(&dev->slock);
		FUNC1(dev);
		FUNC11(&dev->slock);
	}
}