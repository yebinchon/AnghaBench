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
typedef  int /*<<< orphan*/  u8 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_MAC_START ; 
 int EEPROM_MAC_TOTAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_device *d,
		u8 mac[])
{
	u8 buf[EEPROM_MAC_TOTAL];

	if (FUNC1(d, EEPROM_MAC_START,
				buf, EEPROM_MAC_TOTAL, 4) != 0)
		return -ENODEV;

	FUNC0(mac, buf, 6);
	return 0;
}