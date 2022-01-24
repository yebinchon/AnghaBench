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
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW210X_READ_MSG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (char*,int)) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d, u8 mac[6])
{
	int i;
	u8 ibuf[] = {0, 0};
	u8 eeprom[256], eepromline[16];

	for (i = 0; i < 256; i++) {
		if (FUNC2(d->udev, 0xb6, 0xa0 , i, ibuf, 2, DW210X_READ_MSG) < 0) {
			FUNC3("read eeprom failed.");
			return -1;
		} else {
			eepromline[i%16] = ibuf[0];
			eeprom[i] = ibuf[0];
		}
		if ((i % 16) == 15) {
			FUNC0("%02x: ", i - 15);
			FUNC1(eepromline, 16, deb_xfer);
		}
	}

	FUNC4(mac, eeprom + 8, 6);
	return 0;
}