#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_7__ {scalar_t__ ac97; } ;
struct TYPE_6__ {int xclk; } ;
struct em28xx {scalar_t__ int_audio_type; int volume; int ctl_aoutput; TYPE_3__* intf; scalar_t__ mute; TYPE_2__ audio_mode; TYPE_1__ board; } ;
struct TYPE_9__ {int mux; int /*<<< orphan*/  reg; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_STATUS ; 
 int /*<<< orphan*/  AC97_PCM_LR_ADC_RATE ; 
 int /*<<< orphan*/  AC97_POWERDOWN ; 
 int /*<<< orphan*/  AC97_REC_SEL ; 
 int FUNC0 (TYPE_4__*) ; 
 int EM28XX_AOUT_PCM_IN ; 
 scalar_t__ EM28XX_INT_AUDIO_NONE ; 
 scalar_t__ EM28XX_NO_AC97 ; 
 int /*<<< orphan*/  EM28XX_R0F_XCLK ; 
 int EM28XX_XCLK_AUDIO_UNMUTE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct em28xx*) ; 
 int FUNC4 (struct em28xx*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct em28xx*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* outputs ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

int FUNC7(struct em28xx *dev)
{
	int ret, i;
	u8 xclk;

	if (dev->int_audio_type == EM28XX_INT_AUDIO_NONE)
		return 0;

	/*
	 * It is assumed that all devices use master volume for output.
	 * It would be possible to use also line output.
	 */
	if (dev->audio_mode.ac97 != EM28XX_NO_AC97) {
		/* Mute all outputs */
		for (i = 0; i < FUNC0(outputs); i++) {
			ret = FUNC4(dev, outputs[i].reg, 0x8000);
			if (ret < 0)
				FUNC2(&dev->intf->dev,
					 "couldn't setup AC97 register %d\n",
					 outputs[i].reg);
		}
	}

	xclk = dev->board.xclk & 0x7f;
	if (!dev->mute)
		xclk |= EM28XX_XCLK_AUDIO_UNMUTE;

	ret = FUNC5(dev, EM28XX_R0F_XCLK, xclk);
	if (ret < 0)
		return ret;
	FUNC6(10000, 11000);

	/* Selects the proper audio input */
	ret = FUNC3(dev);

	/* Sets volume */
	if (dev->audio_mode.ac97 != EM28XX_NO_AC97) {
		int vol;

		FUNC4(dev, AC97_POWERDOWN, 0x4200);
		FUNC4(dev, AC97_EXTENDED_STATUS, 0x0031);
		FUNC4(dev, AC97_PCM_LR_ADC_RATE, 0xbb80);

		/* LSB: left channel - both channels with the same level */
		vol = (0x1f - dev->volume) | ((0x1f - dev->volume) << 8);

		/* Mute device, if needed */
		if (dev->mute)
			vol |= 0x8000;

		/* Sets volume */
		for (i = 0; i < FUNC0(outputs); i++) {
			if (dev->ctl_aoutput & outputs[i].mux)
				ret = FUNC4(dev, outputs[i].reg,
							vol);
			if (ret < 0)
				FUNC2(&dev->intf->dev,
					 "couldn't setup AC97 register %d\n",
					 outputs[i].reg);
		}

		if (dev->ctl_aoutput & EM28XX_AOUT_PCM_IN) {
			int sel = FUNC1(dev->ctl_aoutput);

			/*
			 * Use the same input for both left and right
			 * channels
			 */
			sel |= (sel << 8);

			FUNC4(dev, AC97_REC_SEL, sel);
		}
	}

	return ret;
}