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
struct cx25821_dev {int /*<<< orphan*/  name; } ;
struct cx25821_audio_dev {int /*<<< orphan*/  substream; int /*<<< orphan*/  count; struct cx25821_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t AUDIO_SRAM_CHANNEL ; 
 int /*<<< orphan*/  AUD_A_GPCNT ; 
 int /*<<< orphan*/  AUD_A_GPCNT_CTL ; 
 int /*<<< orphan*/  AUD_A_INT_STAT ; 
 int /*<<< orphan*/  AUD_INT_DMA_CTL ; 
 int AUD_INT_DN_RISCI1 ; 
 int AUD_INT_DN_SYNC ; 
 int AUD_INT_OPC_ERR ; 
 int FLD_AUD_DST_A_FIFO_EN ; 
 int FLD_AUD_DST_A_RISC_EN ; 
 int GP_COUNT_CONTROL_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cx25821_aud_irqs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx25821_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cx25821_sram_channels ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct cx25821_audio_dev *chip, u32 status,
			    u32 mask)
{
	struct cx25821_dev *dev = chip->dev;

	if (0 == (status & mask))
		return;

	FUNC6(AUD_A_INT_STAT, status);
	if (debug > 1 || (status & mask & ~0xff))
		FUNC2(dev->name, "irq aud", cx25821_aud_irqs,
				FUNC0(cx25821_aud_irqs), status, mask);

	/* risc op code error */
	if (status & AUD_INT_OPC_ERR) {
		FUNC7("WARNING %s/1: Audio risc op code error\n", dev->name);

		FUNC4(AUD_INT_DMA_CTL,
			 FLD_AUD_DST_A_RISC_EN | FLD_AUD_DST_A_FIFO_EN);
		FUNC3(dev,
				&cx25821_sram_channels[AUDIO_SRAM_CHANNEL]);
	}
	if (status & AUD_INT_DN_SYNC) {
		FUNC7("WARNING %s: Downstream sync error!\n", dev->name);
		FUNC6(AUD_A_GPCNT_CTL, GP_COUNT_CONTROL_RESET);
		return;
	}

	/* risc1 downstream */
	if (status & AUD_INT_DN_RISCI1) {
		FUNC1(&chip->count, FUNC5(AUD_A_GPCNT));
		FUNC8(chip->substream);
	}
}