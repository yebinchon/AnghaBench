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
#define  SAA7134_BOARD_HAUPPAUGE_HVR1120 133 
#define  SAA7134_BOARD_HAUPPAUGE_HVR1150 132 
#define  SAA7134_BOARD_KWORLD_PC150U 131 
#define  SAA7134_BOARD_KWORLD_PCI_SBTVD_FULLSEG 130 
#define  SAA7134_BOARD_MAGICPRO_PROHDTV_PRO2 129 
#define  TDA18271_CALLBACK_CMD_AGC_ENABLE 128 
 int FUNC0 (struct saa7134_dev*,int) ; 
 int FUNC1 (struct saa7134_dev*,int) ; 
 int FUNC2 (struct saa7134_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct saa7134_dev *dev,
					  int command, int arg)
{
	int ret = 0;

	switch (command) {
	case TDA18271_CALLBACK_CMD_AGC_ENABLE: /* 0 */
		switch (dev->board) {
		case SAA7134_BOARD_HAUPPAUGE_HVR1150:
		case SAA7134_BOARD_HAUPPAUGE_HVR1120:
		case SAA7134_BOARD_MAGICPRO_PROHDTV_PRO2:
			ret = FUNC2(dev, arg);
			break;
		case SAA7134_BOARD_KWORLD_PCI_SBTVD_FULLSEG:
			ret = FUNC1(dev, arg);
			break;
		case SAA7134_BOARD_KWORLD_PC150U:
			ret = FUNC0(dev, arg);
			break;
		default:
			break;
		}
		break;
	default:
		ret = -EINVAL;
		break;
	}
	return ret;
}