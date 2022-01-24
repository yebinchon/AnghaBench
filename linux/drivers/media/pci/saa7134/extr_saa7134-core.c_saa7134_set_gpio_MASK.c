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
struct saa7134_dev {int dummy; } ;

/* Variables and functions */
 int SAA7134_GPIO_GPMODE0 ; 
 int SAA7134_GPIO_GPSTATUS0 ; 
 int /*<<< orphan*/  SAA7134_VIDEO_PORT_CTRL6 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

void FUNC3(struct saa7134_dev *dev, int bit_no, int value)
{
	u32 index, bitval;

	index = 1 << bit_no;
	switch (value) {
	case 0: /* static value */
	case 1:
		FUNC0("setting GPIO%d to static %d\n", bit_no, value);
		/* turn sync mode off if necessary */
		if (index & 0x00c00000)
			FUNC1(SAA7134_VIDEO_PORT_CTRL6, 0x0f, 0x00);
		if (value)
			bitval = index;
		else
			bitval = 0;
		FUNC2(SAA7134_GPIO_GPMODE0 >> 2, index, index);
		FUNC2(SAA7134_GPIO_GPSTATUS0 >> 2, index, bitval);
		break;
	case 3:	/* tristate */
		FUNC0("setting GPIO%d to tristate\n", bit_no);
		FUNC2(SAA7134_GPIO_GPMODE0 >> 2, index, 0);
		break;
	}
}