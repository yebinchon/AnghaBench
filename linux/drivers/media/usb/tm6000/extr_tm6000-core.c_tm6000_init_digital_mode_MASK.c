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
struct TYPE_2__ {int dvb_led; } ;
struct tm6000_core {scalar_t__ dev_type; TYPE_1__ gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_03_SET_GET_MCU_PIN ; 
 int /*<<< orphan*/  REQ_04_EN_DISABLE_MCU_INT ; 
 int /*<<< orphan*/  TM6000_REQ07_RDA_CLK_SEL ; 
 int /*<<< orphan*/  TM6000_REQ07_RDF_PWDOWN_ACLK ; 
 int /*<<< orphan*/  TM6000_REQ07_RE2_VADC_STATUS_CTL ; 
 int /*<<< orphan*/  TM6000_REQ07_RE8_VADC_PWDOWN_CTL ; 
 int /*<<< orphan*/  TM6000_REQ07_REB_VADC_AADC_MODE ; 
 scalar_t__ TM6010 ; 
 int /*<<< orphan*/  TM6010_REQ07_R3F_RESET ; 
 int /*<<< orphan*/  TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE ; 
 int /*<<< orphan*/  TM6010_REQ07_RC1_TRESHOLD ; 
 int /*<<< orphan*/  TM6010_REQ07_RC3_HSTART1 ; 
 int /*<<< orphan*/  TM6010_REQ07_RCC_ACTIVE_IF ; 
 int /*<<< orphan*/  TM6010_REQ07_RD1_ADDR_FOR_REQ1 ; 
 int /*<<< orphan*/  TM6010_REQ07_RD2_ADDR_FOR_REQ2 ; 
 int /*<<< orphan*/  TM6010_REQ07_RD6_ENDP_REQ1_REQ2 ; 
 int /*<<< orphan*/  TM6010_REQ07_RFE_POWER_DOWN ; 
 int /*<<< orphan*/  TM6010_REQ07_RFF_SOFT_RESET ; 
 int /*<<< orphan*/  TM6010_REQ08_RE2_POWER_DOWN_CTRL1 ; 
 int /*<<< orphan*/  TM6010_REQ08_RE6_POWER_DOWN_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tm6000_core*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct tm6000_core*,int /*<<< orphan*/ ,int,int) ; 

int FUNC3(struct tm6000_core *dev)
{
	if (dev->dev_type == TM6010) {
		/* Disable video and audio */
		FUNC2(dev, TM6010_REQ07_RCC_ACTIVE_IF,
				0x00, 0x60);
		/* Enable TS input */
		FUNC2(dev, TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE,
				0x40, 0x40);
		/* all power down, but not the digital data port */
		FUNC1(dev, TM6010_REQ07_RFE_POWER_DOWN, 0x28);
		FUNC1(dev, TM6010_REQ08_RE2_POWER_DOWN_CTRL1, 0xfc);
		FUNC1(dev, TM6010_REQ08_RE6_POWER_DOWN_CTRL2, 0xff);
	} else  {
		FUNC1(dev, TM6010_REQ07_RFF_SOFT_RESET, 0x08);
		FUNC1(dev, TM6010_REQ07_RFF_SOFT_RESET, 0x00);
		FUNC1(dev, TM6010_REQ07_R3F_RESET, 0x01);
		FUNC1(dev, TM6000_REQ07_RDF_PWDOWN_ACLK, 0x08);
		FUNC1(dev, TM6000_REQ07_RE2_VADC_STATUS_CTL, 0x0c);
		FUNC1(dev, TM6000_REQ07_RE8_VADC_PWDOWN_CTL, 0xff);
		FUNC1(dev, TM6000_REQ07_REB_VADC_AADC_MODE, 0xd8);
		FUNC1(dev, TM6010_REQ07_RC0_ACTIVE_VIDEO_SOURCE, 0x40);
		FUNC1(dev, TM6010_REQ07_RC1_TRESHOLD, 0xd0);
		FUNC1(dev, TM6010_REQ07_RC3_HSTART1, 0x09);
		FUNC1(dev, TM6000_REQ07_RDA_CLK_SEL, 0x37);
		FUNC1(dev, TM6010_REQ07_RD1_ADDR_FOR_REQ1, 0xd8);
		FUNC1(dev, TM6010_REQ07_RD2_ADDR_FOR_REQ2, 0xc0);
		FUNC1(dev, TM6010_REQ07_RD6_ENDP_REQ1_REQ2, 0x60);

		FUNC1(dev, TM6000_REQ07_RE2_VADC_STATUS_CTL, 0x0c);
		FUNC1(dev, TM6000_REQ07_RE8_VADC_PWDOWN_CTL, 0xff);
		FUNC1(dev, TM6000_REQ07_REB_VADC_AADC_MODE, 0x08);
		FUNC0(50);

		FUNC1(dev, REQ_04_EN_DISABLE_MCU_INT, 0x0020, 0x00);
		FUNC0(50);
		FUNC1(dev, REQ_04_EN_DISABLE_MCU_INT, 0x0020, 0x01);
		FUNC0(50);
		FUNC1(dev, REQ_04_EN_DISABLE_MCU_INT, 0x0020, 0x00);
		FUNC0(100);
	}

	/* switch dvb led on */
	if (dev->gpio.dvb_led) {
		FUNC1(dev, REQ_03_SET_GET_MCU_PIN,
			dev->gpio.dvb_led, 0x00);
	}

	return 0;
}