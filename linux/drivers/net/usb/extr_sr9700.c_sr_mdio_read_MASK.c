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
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int __le16 ;

/* Variables and functions */
 int BMSR_LSTATUS ; 
 int MII_BMSR ; 
 int NSR_LINKST ; 
 int /*<<< orphan*/  SR_NSR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int,int,int*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, int phy_id, int loc)
{
	struct usbnet *dev = FUNC2(netdev);
	__le16 res;
	int rc = 0;

	if (phy_id) {
		FUNC1(netdev, "Only internal phy supported\n");
		return 0;
	}

	/* Access NSR_LINKST bit for link status instead of MII_BMSR */
	if (loc == MII_BMSR) {
		u8 value;

		FUNC3(dev, SR_NSR, &value);
		if (value & NSR_LINKST)
			rc = 1;
	}
	FUNC4(dev, 1, loc, &res);
	if (rc == 1)
		res = FUNC0(res) | BMSR_LSTATUS;
	else
		res = FUNC0(res) & ~BMSR_LSTATUS;

	FUNC1(netdev, "sr_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\n",
		   phy_id, loc, res);

	return res;
}