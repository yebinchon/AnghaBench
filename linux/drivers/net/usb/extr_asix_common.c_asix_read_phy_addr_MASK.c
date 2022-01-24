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
struct usbnet {int /*<<< orphan*/  net; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_READ_PHY_ID ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC3(struct usbnet *dev, int internal)
{
	int offset = (internal ? 1 : 0);
	u8 buf[2];
	int ret = FUNC0(dev, AX_CMD_READ_PHY_ID, 0, 0, 2, buf, 0);

	FUNC1(dev->net, "asix_get_phy_addr()\n");

	if (ret < 0) {
		FUNC2(dev->net, "Error reading PHYID register: %02x\n", ret);
		goto out;
	}
	FUNC1(dev->net, "asix_get_phy_addr() returning 0x%04x\n",
		   *((__le16 *)buf));
	ret = buf[offset];

out:
	return ret;
}