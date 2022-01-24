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
struct TYPE_2__ {int tuner_reset; } ;
struct tm6000_core {scalar_t__ tuner_type; TYPE_1__ gpio; int /*<<< orphan*/  model; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_03_SET_GET_MCU_PIN ; 
 int /*<<< orphan*/  REQ_04_EN_DISABLE_MCU_INT ; 
 int /*<<< orphan*/  REQ_50_SET_START ; 
 int /*<<< orphan*/  REQ_51_SET_STOP ; 
#define  TM5600_BOARD_10MOONS_UT821 134 
#define  TM6010_BOARD_HAUPPAUGE_900H 133 
#define  TM6010_BOARD_TERRATEC_CINERGY_HYBRID_XE 132 
#define  TM6010_BOARD_TWINHAN_TU501 131 
 scalar_t__ TUNER_XC2028 ; 
#define  XC2028_I2C_FLUSH 130 
#define  XC2028_RESET_CLK 129 
#define  XC2028_TUNER_RESET 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct tm6000_core*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tm6000_core*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tm6000_core*,int /*<<< orphan*/ ,int,int) ; 

int FUNC4(void *ptr, int component, int command, int arg)
{
	int rc = 0;
	struct tm6000_core *dev = ptr;

	if (dev->tuner_type != TUNER_XC2028)
		return 0;

	switch (command) {
	case XC2028_RESET_CLK:
		FUNC2(dev, 0);

		FUNC3(dev, REQ_04_EN_DISABLE_MCU_INT,
					0x02, arg);
		FUNC0(10);
		rc = FUNC1(dev, 10);
		break;
	case XC2028_TUNER_RESET:
		/* Reset codes during load firmware */
		switch (arg) {
		case 0:
			/* newer tuner can faster reset */
			switch (dev->model) {
			case TM5600_BOARD_10MOONS_UT821:
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       dev->gpio.tuner_reset, 0x01);
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       0x300, 0x01);
				FUNC0(10);
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       dev->gpio.tuner_reset, 0x00);
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       0x300, 0x00);
				FUNC0(10);
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       dev->gpio.tuner_reset, 0x01);
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       0x300, 0x01);
				break;
			case TM6010_BOARD_HAUPPAUGE_900H:
			case TM6010_BOARD_TERRATEC_CINERGY_HYBRID_XE:
			case TM6010_BOARD_TWINHAN_TU501:
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       dev->gpio.tuner_reset, 0x01);
				FUNC0(60);
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       dev->gpio.tuner_reset, 0x00);
				FUNC0(75);
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       dev->gpio.tuner_reset, 0x01);
				FUNC0(60);
				break;
			default:
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       dev->gpio.tuner_reset, 0x00);
				FUNC0(130);
				FUNC3(dev, REQ_03_SET_GET_MCU_PIN,
					       dev->gpio.tuner_reset, 0x01);
				FUNC0(130);
				break;
			}

			FUNC2(dev, 1);
			break;
		case 1:
			FUNC3(dev, REQ_04_EN_DISABLE_MCU_INT,
						0x02, 0x01);
			FUNC0(10);
			break;
		case 2:
			rc = FUNC1(dev, 100);
			break;
		}
		break;
	case XC2028_I2C_FLUSH:
		FUNC3(dev, REQ_50_SET_START, 0, 0);
		FUNC3(dev, REQ_51_SET_STOP, 0, 0);
		break;
	}
	return rc;
}