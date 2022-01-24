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
struct cx23885_dev {int /*<<< orphan*/ * sram_channels; int /*<<< orphan*/  name; struct cx23885_audio_dev* audio_dev; } ;
struct cx23885_audio_dev {int /*<<< orphan*/  substream; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_INT_INT_STAT ; 
 size_t AUDIO_SRAM_CHANNEL ; 
 int /*<<< orphan*/  AUD_INT_A_GPCNT ; 
 int /*<<< orphan*/  AUD_INT_A_GPCNT_CTL ; 
 int /*<<< orphan*/  AUD_INT_DMA_CTL ; 
 int AUD_INT_DN_RISCI1 ; 
 int AUD_INT_DN_SYNC ; 
 int AUD_INT_OPC_ERR ; 
 int GP_COUNT_CONTROL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct cx23885_dev *dev, u32 status, u32 mask)
{
	struct cx23885_audio_dev *chip = dev->audio_dev;

	if (0 == (status & mask))
		return 0;

	FUNC4(AUDIO_INT_INT_STAT, status);

	/* risc op code error */
	if (status & AUD_INT_OPC_ERR) {
		FUNC6("%s/1: Audio risc op code error\n",
			dev->name);
		FUNC2(AUD_INT_DMA_CTL, 0x11);
		FUNC1(dev,
			&dev->sram_channels[AUDIO_SRAM_CHANNEL]);
	}
	if (status & AUD_INT_DN_SYNC) {
		FUNC5(1, "Downstream sync error\n");
		FUNC4(AUD_INT_A_GPCNT_CTL, GP_COUNT_CONTROL_RESET);
		return 1;
	}
	/* risc1 downstream */
	if (status & AUD_INT_DN_RISCI1) {
		FUNC0(&chip->count, FUNC3(AUD_INT_A_GPCNT));
		FUNC7(chip->substream);
	}
	/* FIXME: Any other status should deserve a special handling? */

	return 1;
}