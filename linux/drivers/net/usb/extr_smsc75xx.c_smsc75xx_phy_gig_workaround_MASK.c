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
typedef  int u32 ;
struct mii_if_info {int /*<<< orphan*/  phy_id; } ;
struct usbnet {int /*<<< orphan*/  net; struct mii_if_info mii; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  PMT_CTL ; 
 int PMT_CTL_PHY_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev)
{
	struct mii_if_info *mii = &dev->mii;
	int ret = 0, timeout = 0;
	u32 buf, link_up = 0;

	/* Set the phy in Gig loopback */
	FUNC2(dev->net, mii->phy_id, MII_BMCR, 0x4040);

	/* Wait for the link up */
	do {
		link_up = FUNC1(dev);
		FUNC5(10000, 20000);
		timeout++;
	} while ((!link_up) && (timeout < 1000));

	if (timeout >= 1000) {
		FUNC0(dev->net, "Timeout waiting for PHY link up\n");
		return -EIO;
	}

	/* phy reset */
	ret = FUNC3(dev, PMT_CTL, &buf);
	if (ret < 0) {
		FUNC0(dev->net, "Failed to read PMT_CTL: %d\n", ret);
		return ret;
	}

	buf |= PMT_CTL_PHY_RST;

	ret = FUNC4(dev, PMT_CTL, buf);
	if (ret < 0) {
		FUNC0(dev->net, "Failed to write PMT_CTL: %d\n", ret);
		return ret;
	}

	timeout = 0;
	do {
		FUNC5(10000, 20000);
		ret = FUNC3(dev, PMT_CTL, &buf);
		if (ret < 0) {
			FUNC0(dev->net, "Failed to read PMT_CTL: %d\n",
				    ret);
			return ret;
		}
		timeout++;
	} while ((buf & PMT_CTL_PHY_RST) && (timeout < 100));

	if (timeout >= 100) {
		FUNC0(dev->net, "timeout waiting for PHY Reset\n");
		return -EIO;
	}

	return 0;
}