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
typedef  int u8 ;
struct v4l2_frequency {int /*<<< orphan*/  frequency; } ;
struct TYPE_2__ {int dvb_led; } ;
struct tm6000_core {scalar_t__ dev_type; TYPE_1__ gpio; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  freq; scalar_t__ scaler; int /*<<< orphan*/  radio; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_03_SET_GET_MCU_PIN ; 
 int /*<<< orphan*/  TM6000_REQ07_RDA_CLK_SEL ; 
 int /*<<< orphan*/  TM6000_REQ07_RDF_PWDOWN_ACLK ; 
 scalar_t__ TM6010 ; 
 int /*<<< orphan*/  TM6010_REQ07_R3F_RESET ; 
 int /*<<< orphan*/  TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE ; 
 int /*<<< orphan*/  TM6010_REQ07_RC3_HSTART1 ; 
 int /*<<< orphan*/  TM6010_REQ07_RCC_ACTIVE_IF ; 
 int TM6010_REQ07_RCC_ACTIVE_IF_AUDIO_ENABLE ; 
 int TM6010_REQ07_RCC_ACTIVE_IF_VIDEO_ENABLE ; 
 int /*<<< orphan*/  TM6010_REQ07_RD1_ADDR_FOR_REQ1 ; 
 int /*<<< orphan*/  TM6010_REQ07_RD2_ADDR_FOR_REQ2 ; 
 int /*<<< orphan*/  TM6010_REQ07_RD6_ENDP_REQ1_REQ2 ; 
 int /*<<< orphan*/  TM6010_REQ07_RFF_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  FUNC1 (struct tm6000_core*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC3 (struct tm6000_core*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct tm6000_core*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC6 (struct tm6000_core*) ; 
 int /*<<< orphan*/  tuner ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 

int FUNC8(struct tm6000_core *dev)
{
	struct v4l2_frequency f;

	if (dev->dev_type == TM6010) {
		u8 active = TM6010_REQ07_RCC_ACTIVE_IF_AUDIO_ENABLE;

		if (!dev->radio)
			active |= TM6010_REQ07_RCC_ACTIVE_IF_VIDEO_ENABLE;

		/* Enable video and audio */
		FUNC4(dev, TM6010_REQ07_RCC_ACTIVE_IF,
							active, 0x60);
		/* Disable TS input */
		FUNC4(dev, TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE,
							0x00, 0x40);
	} else {
		/* Enables soft reset */
		FUNC3(dev, TM6010_REQ07_R3F_RESET, 0x01);

		if (dev->scaler)
			/* Disable Hfilter and Enable TS Drop err */
			FUNC3(dev, TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, 0x20);
		else	/* Enable Hfilter and disable TS Drop err */
			FUNC3(dev, TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, 0x80);

		FUNC3(dev, TM6010_REQ07_RC3_HSTART1, 0x88);
		FUNC3(dev, TM6000_REQ07_RDA_CLK_SEL, 0x23);
		FUNC3(dev, TM6010_REQ07_RD1_ADDR_FOR_REQ1, 0xc0);
		FUNC3(dev, TM6010_REQ07_RD2_ADDR_FOR_REQ2, 0xd8);
		FUNC3(dev, TM6010_REQ07_RD6_ENDP_REQ1_REQ2, 0x06);
		FUNC3(dev, TM6000_REQ07_RDF_PWDOWN_ACLK, 0x1f);

		/* AP Software reset */
		FUNC3(dev, TM6010_REQ07_RFF_SOFT_RESET, 0x08);
		FUNC3(dev, TM6010_REQ07_RFF_SOFT_RESET, 0x00);

		FUNC2(dev);

		/* Disables soft reset */
		FUNC3(dev, TM6010_REQ07_R3F_RESET, 0x00);
	}
	FUNC0(20);

	/* Tuner firmware can now be loaded */

	/*
	 * FIXME: This is a hack! xc3028 "sleeps" when no channel is detected
	 * for more than a few seconds. Not sure why, as this behavior does
	 * not happen on other devices with xc3028. So, I suspect that it
	 * is yet another bug at tm6000. After start sleeping, decoding
	 * doesn't start automatically. Instead, it requires some
	 * I2C commands to wake it up. As we want to have image at the
	 * beginning, we needed to add this hack. The better would be to
	 * discover some way to make tm6000 to wake up without this hack.
	 */
	f.frequency = dev->freq;
	FUNC7(&dev->v4l2_dev, 0, tuner, s_frequency, &f);

	FUNC0(100);
	FUNC5(dev);
	FUNC6(dev);
	FUNC1(dev, 48000);

	/* switch dvb led off */
	if (dev->gpio.dvb_led) {
		FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
			dev->gpio.dvb_led, 0x01);
	}

	return 0;
}