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
typedef  int u8 ;
typedef  int u16 ;
struct usbnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_ACCESS_MAC ; 
 int /*<<< orphan*/  AX_SROM_ADDR ; 
 int /*<<< orphan*/  AX_SROM_CMD ; 
 int /*<<< orphan*/  AX_SROM_DATA_LOW ; 
 int EEP_BUSY ; 
 int EEP_RD ; 
 int EINVAL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 scalar_t__ FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int jiffies ; 
 scalar_t__ FUNC3 (int,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev)
{
	u8 i, buf, eeprom[20];
	u16 csum, delay = HZ / 10;
	unsigned long jtimeout;

	/* Read EEPROM content */
	for (i = 0; i < 6; i++) {
		buf = i;
		if (FUNC2(dev, AX_ACCESS_MAC, AX_SROM_ADDR,
				      1, 1, &buf) < 0)
			return -EINVAL;

		buf = EEP_RD;
		if (FUNC2(dev, AX_ACCESS_MAC, AX_SROM_CMD,
				      1, 1, &buf) < 0)
			return -EINVAL;

		jtimeout = jiffies + delay;
		do {
			FUNC1(dev, AX_ACCESS_MAC, AX_SROM_CMD,
					 1, 1, &buf);

			if (FUNC3(jiffies, jtimeout))
				return -EINVAL;

		} while (buf & EEP_BUSY);

		FUNC0(dev, AX_ACCESS_MAC, AX_SROM_DATA_LOW,
				   2, 2, &eeprom[i * 2], 0);

		if ((i == 0) && (eeprom[0] == 0xFF))
			return -EINVAL;
	}

	csum = eeprom[6] + eeprom[7] + eeprom[8] + eeprom[9];
	csum = (csum >> 8) + (csum & 0xff);
	if ((csum + eeprom[10]) != 0xff)
		return -EINVAL;

	return 0;
}