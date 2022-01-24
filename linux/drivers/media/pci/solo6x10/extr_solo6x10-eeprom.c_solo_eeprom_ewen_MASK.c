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
struct solo_dev {int dummy; } ;

/* Variables and functions */
 int ADDR_LEN ; 
 int EE_CS ; 
 int EE_EWEN_CMD ; 
 int EE_SHIFT_CLK ; 
 int SOLO_EEPROM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct solo_dev*,int) ; 
 unsigned int FUNC1 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*,int) ; 

unsigned int FUNC3(struct solo_dev *solo_dev, int w_en)
{
	int ewen_cmd = (w_en ? 0x3f : 0) | (EE_EWEN_CMD << ADDR_LEN);
	unsigned int retval = 0;
	int i;

	FUNC0(solo_dev, ewen_cmd);

	for (i = 0; i < 16; i++) {
		FUNC2(solo_dev, SOLO_EEPROM_ENABLE |
				      EE_SHIFT_CLK);
		retval = (retval << 1) | FUNC1(solo_dev);
		FUNC2(solo_dev, SOLO_EEPROM_ENABLE);
		retval = (retval << 1) | FUNC1(solo_dev);
	}

	FUNC2(solo_dev, ~EE_CS);
	retval = (retval << 1) | FUNC1(solo_dev);

	return retval;
}