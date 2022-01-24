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
struct saa7134_dev {int /*<<< orphan*/  board; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SAA7134_BOARD_AVERMEDIA_A16D 133 
#define  SAA7134_BOARD_AVERMEDIA_A700_HYBRID 132 
#define  SAA7134_BOARD_AVERMEDIA_CARDBUS_506 131 
#define  SAA7134_BOARD_AVERMEDIA_M103 130 
#define  SAA7134_BOARD_VIDEOMATE_T750 129 
 int SAA7134_GPIO_GPSTATUS0 ; 
#define  XC2028_TUNER_RESET 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

__attribute__((used)) static int FUNC3(struct saa7134_dev *dev,
				   int command, int arg)
{
	switch (command) {
	case XC2028_TUNER_RESET:
		FUNC2(SAA7134_GPIO_GPSTATUS0 >> 2, 0x00008000, 0x00000000);
		FUNC2(SAA7134_GPIO_GPSTATUS0 >> 2, 0x00008000, 0x00008000);
		switch (dev->board) {
		case SAA7134_BOARD_AVERMEDIA_CARDBUS_506:
		case SAA7134_BOARD_AVERMEDIA_M103:
			FUNC1(dev, 23, 0);
			FUNC0(10);
			FUNC1(dev, 23, 1);
		break;
		case SAA7134_BOARD_AVERMEDIA_A16D:
			FUNC1(dev, 21, 0);
			FUNC0(10);
			FUNC1(dev, 21, 1);
		break;
		case SAA7134_BOARD_AVERMEDIA_A700_HYBRID:
			FUNC1(dev, 18, 0);
			FUNC0(10);
			FUNC1(dev, 18, 1);
		break;
		case SAA7134_BOARD_VIDEOMATE_T750:
			FUNC1(dev, 20, 0);
			FUNC0(10);
			FUNC1(dev, 20, 1);
		break;
		}
		return 0;
	}
	return -EINVAL;
}