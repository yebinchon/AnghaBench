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
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  phy_mutex; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_READ_MII_REG ; 
 int /*<<< orphan*/  AX_CMD_STATMNGSTS_REG ; 
 int AX_HOST_EN ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int) ; 
 int FUNC2 (struct usbnet*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 struct usbnet* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

int FUNC9(struct net_device *netdev, int phy_id, int loc)
{
	struct usbnet *dev = FUNC7(netdev);
	__le16 res;
	u8 smsr;
	int i = 0;
	int ret;

	FUNC4(&dev->phy_mutex);
	do {
		ret = FUNC2(dev, 1);
		if (ret == -ENODEV || ret == -ETIMEDOUT)
			break;
		FUNC8(1000, 1100);
		ret = FUNC0(dev, AX_CMD_STATMNGSTS_REG,
				    0, 0, 1, &smsr, 1);
	} while (!(smsr & AX_HOST_EN) && (i++ < 30) && (ret != -ENODEV));
	if (ret == -ENODEV || ret == -ETIMEDOUT) {
		FUNC5(&dev->phy_mutex);
		return ret;
	}

	FUNC0(dev, AX_CMD_READ_MII_REG, phy_id,
		      (__u16)loc, 2, &res, 1);
	FUNC1(dev, 1);
	FUNC5(&dev->phy_mutex);

	FUNC6(dev->net, "asix_mdio_read_nopm() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\n",
			phy_id, loc, FUNC3(res));

	return FUNC3(res);
}