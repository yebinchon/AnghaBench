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
struct cx88_audio_dev {int /*<<< orphan*/  substream; int /*<<< orphan*/  count; struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int AUD_INT_DN_RISCI1 ; 
 int AUD_INT_DN_SYNC ; 
 int AUD_INT_OPC_ERR ; 
 int GP_COUNT_CONTROL_RESET ; 
 int /*<<< orphan*/  MO_AUDD_GPCNT ; 
 int /*<<< orphan*/  MO_AUDD_GPCNTRL ; 
 int /*<<< orphan*/  MO_AUD_DMACNTRL ; 
 int /*<<< orphan*/  MO_AUD_INTMSK ; 
 int /*<<< orphan*/  MO_AUD_INTSTAT ; 
 size_t SRAM_CH25 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cx88_aud_irqs ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx88_core*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cx88_sram_channels ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct cx88_audio_dev *chip)
{
	struct cx88_core *core = chip->core;
	u32 status, mask;

	status = FUNC5(MO_AUD_INTSTAT);
	mask   = FUNC5(MO_AUD_INTMSK);
	if (0 == (status & mask))
		return;
	FUNC6(MO_AUD_INTSTAT, status);
	if (debug > 1  ||  (status & mask & ~0xff))
		FUNC2("irq aud",
				   cx88_aud_irqs, FUNC0(cx88_aud_irqs),
				   status, mask);
	/* risc op code error */
	if (status & AUD_INT_OPC_ERR) {
		FUNC8("Audio risc op code error\n");
		FUNC4(MO_AUD_DMACNTRL, 0x11);
		FUNC3(core, &cx88_sram_channels[SRAM_CH25]);
	}
	if (status & AUD_INT_DN_SYNC) {
		FUNC7(1, "Downstream sync error\n");
		FUNC6(MO_AUDD_GPCNTRL, GP_COUNT_CONTROL_RESET);
		return;
	}
	/* risc1 downstream */
	if (status & AUD_INT_DN_RISCI1) {
		FUNC1(&chip->count, FUNC5(MO_AUDD_GPCNT));
		FUNC9(chip->substream);
	}
	/* FIXME: Any other status should deserve a special handling? */
}