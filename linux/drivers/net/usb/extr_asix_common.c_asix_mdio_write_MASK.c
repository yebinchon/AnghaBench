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
struct usbnet {int /*<<< orphan*/  phy_mutex; int /*<<< orphan*/  net; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_STATMNGSTS_REG ; 
 int /*<<< orphan*/  AX_CMD_WRITE_MII_REG ; 
 int AX_HOST_EN ; 
 int ENODEV ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 struct usbnet* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

void FUNC10(struct net_device *netdev, int phy_id, int loc, int val)
{
	struct usbnet *dev = FUNC8(netdev);
	__le16 res = FUNC4(val);
	u8 smsr;
	int i = 0;
	int ret;

	FUNC7(dev->net, "asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\n",
			phy_id, loc, val);

	FUNC5(&dev->phy_mutex);
	do {
		ret = FUNC2(dev, 0);
		if (ret == -ENODEV)
			break;
		FUNC9(1000, 1100);
		ret = FUNC0(dev, AX_CMD_STATMNGSTS_REG,
				    0, 0, 1, &smsr, 0);
	} while (!(smsr & AX_HOST_EN) && (i++ < 30) && (ret != -ENODEV));
	if (ret == -ENODEV) {
		FUNC6(&dev->phy_mutex);
		return;
	}

	FUNC3(dev, AX_CMD_WRITE_MII_REG, phy_id,
		       (__u16)loc, 2, &res, 0);
	FUNC1(dev, 0);
	FUNC6(&dev->phy_mutex);
}