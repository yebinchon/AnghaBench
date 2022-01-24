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
struct usbnet {int /*<<< orphan*/  net; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct usbnet* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, int phy_id, int loc)
{
	struct usbnet *dev = FUNC3(netdev);

	__le16 res;

	if (phy_id) {
		FUNC2(dev->net, "Only internal phy supported\n");
		return 0;
	}

	FUNC0(dev, 1, loc, &res);

	FUNC2(dev->net,
		   "dm9601_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\n",
		   phy_id, loc, FUNC1(res));

	return FUNC1(res);
}