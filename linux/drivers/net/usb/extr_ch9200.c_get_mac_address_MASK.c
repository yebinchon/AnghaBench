#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbnet {TYPE_2__* udev; int /*<<< orphan*/  net; } ;
typedef  int /*<<< orphan*/  mac_addr ;
struct TYPE_3__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_TIMEOUT_MS ; 
 int EINVAL ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MAC_REG_STATION_H ; 
 int /*<<< orphan*/  MAC_REG_STATION_L ; 
 int /*<<< orphan*/  MAC_REG_STATION_M ; 
 int /*<<< orphan*/  REQUEST_READ ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev, unsigned char *data)
{
	int err = 0;
	unsigned char mac_addr[0x06];
	int rd_mac_len = 0;

	FUNC3(dev->net, "get_mac_address:\n\tusbnet VID:%0x PID:%0x\n",
		   FUNC1(dev->udev->descriptor.idVendor),
		   FUNC1(dev->udev->descriptor.idProduct));

	FUNC2(mac_addr, 0, sizeof(mac_addr));
	rd_mac_len = FUNC0(dev, REQUEST_READ, 0,
				  MAC_REG_STATION_L, mac_addr, 0x02,
				  CONTROL_TIMEOUT_MS);
	rd_mac_len += FUNC0(dev, REQUEST_READ, 0, MAC_REG_STATION_M,
				   mac_addr + 2, 0x02, CONTROL_TIMEOUT_MS);
	rd_mac_len += FUNC0(dev, REQUEST_READ, 0, MAC_REG_STATION_H,
				   mac_addr + 4, 0x02, CONTROL_TIMEOUT_MS);
	if (rd_mac_len != ETH_ALEN)
		err = -EINVAL;

	data[0] = mac_addr[5];
	data[1] = mac_addr[4];
	data[2] = mac_addr[3];
	data[3] = mac_addr[2];
	data[4] = mac_addr[1];
	data[5] = mac_addr[0];

	return err;
}