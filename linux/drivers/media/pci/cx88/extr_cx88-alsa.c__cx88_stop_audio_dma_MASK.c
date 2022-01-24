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
struct cx88_audio_dev {struct cx88_core* core; } ;

/* Variables and functions */
 int AUD_INT_DN_RISCI1 ; 
 int AUD_INT_DN_RISCI2 ; 
 int AUD_INT_DN_SYNC ; 
 int AUD_INT_OPC_ERR ; 
 int /*<<< orphan*/  MO_AUD_DMACNTRL ; 
 int /*<<< orphan*/  MO_AUD_INTMSK ; 
 int /*<<< orphan*/  MO_PCI_INTMSK ; 
 int PCI_INT_AUDINT ; 
 size_t SRAM_CH25 ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cx88_sram_channels ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static int FUNC3(struct cx88_audio_dev *chip)
{
	struct cx88_core *core = chip->core;

	FUNC2(1, "Stopping audio DMA\n");

	/* stop dma */
	FUNC1(MO_AUD_DMACNTRL, 0x11);

	/* disable irqs */
	FUNC1(MO_PCI_INTMSK, PCI_INT_AUDINT);
	FUNC1(MO_AUD_INTMSK, AUD_INT_OPC_ERR | AUD_INT_DN_SYNC |
				AUD_INT_DN_RISCI2 | AUD_INT_DN_RISCI1);

	if (debug)
		FUNC0(chip->core,
				       &cx88_sram_channels[SRAM_CH25]);

	return 0;
}