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
 int /*<<< orphan*/  AZ6007_READ_DATA ; 
 int COLD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int WARM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d, const char **name)
{
	int ret;
	u8 *mac;

	FUNC4("Identifying az6007 state\n");

	mac = FUNC3(6, GFP_ATOMIC);
	if (!mac)
		return -ENOMEM;

	/* Try to read the mac address */
	ret = FUNC0(d->udev, AZ6007_READ_DATA, 6, 0, mac, 6);
	if (ret == 6)
		ret = WARM;
	else
		ret = COLD;

	FUNC2(mac);

	if (ret == COLD) {
		FUNC1(d->udev, 0x09, 1, 0, NULL, 0);
		FUNC1(d->udev, 0x00, 0, 0, NULL, 0);
		FUNC1(d->udev, 0x00, 0, 0, NULL, 0);
	}

	FUNC4("Device is on %s state\n",
		 ret == WARM ? "warm" : "cold");
	return ret;
}