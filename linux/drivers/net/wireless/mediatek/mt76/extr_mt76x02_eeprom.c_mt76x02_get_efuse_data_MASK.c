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
typedef  scalar_t__ u16 ;
struct mt76x02_dev {int dummy; } ;
typedef  enum mt76x02_eeprom_modes { ____Placeholder_mt76x02_eeprom_modes } mt76x02_eeprom_modes ;

/* Variables and functions */
 int FUNC0 (struct mt76x02_dev*,scalar_t__,void*,int) ; 

int FUNC1(struct mt76x02_dev *dev, u16 base, void *buf,
			   int len, enum mt76x02_eeprom_modes mode)
{
	int ret, i;

	for (i = 0; i + 16 <= len; i += 16) {
		ret = FUNC0(dev, base + i, buf + i, mode);
		if (ret)
			return ret;
	}

	return 0;
}