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
typedef  int u32 ;
struct TYPE_2__ {int mpeg; } ;
struct cx88_core {int /*<<< orphan*/  last_change; TYPE_1__ board; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_BAUDRATE ; 
 int /*<<< orphan*/  AUD_CTL ; 
 int /*<<< orphan*/  AUD_I2SCNTL ; 
 int /*<<< orphan*/  AUD_I2SINPUTCNTL ; 
 int /*<<< orphan*/  AUD_I2SOUTPUTCNTL ; 
 int /*<<< orphan*/  AUD_RATE_THRES_DMD ; 
 int /*<<< orphan*/  AUD_SOFT_RESET ; 
 int /*<<< orphan*/  AUD_VOL_CTL ; 
 int CX88_MPEG_BLACKBIRD ; 
 int EN_DAC_ENABLE ; 
 int /*<<< orphan*/  EN_I2SOUT_ENABLE ; 
 int /*<<< orphan*/  SHADOW_AUD_VOL_CTL ; 
 scalar_t__ always_analog ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static void FUNC6(struct cx88_core *core, u32 ctl)
{
	u32 volume;

	/* restart dma; This avoids buzz in NICAM and is good in others  */
	FUNC1(core);
	FUNC5(AUD_RATE_THRES_DMD, 0x000000C0);
	FUNC0(core);

	if (core->board.mpeg & CX88_MPEG_BLACKBIRD) {
		FUNC5(AUD_I2SINPUTCNTL, 4);
		FUNC5(AUD_BAUDRATE, 1);
		/*
		 * 'pass-thru mode': this enables the i2s
		 * output to the mpeg encoder
		 */
		FUNC2(AUD_CTL, EN_I2SOUT_ENABLE);
		FUNC5(AUD_I2SOUTPUTCNTL, 1);
		FUNC5(AUD_I2SCNTL, 0);
		/* cx_write(AUD_APB_IN_RATE_ADJ, 0); */
	}
	if ((always_analog) || (!(core->board.mpeg & CX88_MPEG_BLACKBIRD))) {
		ctl |= EN_DAC_ENABLE;
		FUNC5(AUD_CTL, ctl);
	}

	/* finish programming */
	FUNC5(AUD_SOFT_RESET, 0x0000);

	/* unmute */
	volume = FUNC3(SHADOW_AUD_VOL_CTL);
	FUNC4(SHADOW_AUD_VOL_CTL, AUD_VOL_CTL, volume);

	core->last_change = jiffies;
}