#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct phy_device {scalar_t__ link; } ;
struct lan78xx_net {int link_on; int delta; int /*<<< orphan*/  bh; int /*<<< orphan*/  stat_monitor; TYPE_3__* net; TYPE_1__* udev; } ;
struct TYPE_5__ {int speed; int /*<<< orphan*/  duplex; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_6__ {struct phy_device* phydev; } ;
struct TYPE_4__ {scalar_t__ speed; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  INT_STS ; 
 int /*<<< orphan*/  INT_STS_PHY_INT_ ; 
 int /*<<< orphan*/  MAC_CR ; 
 int /*<<< orphan*/  MAC_CR_RST_ ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_LPA ; 
 scalar_t__ STAT_UPDATE_TIMER ; 
 int /*<<< orphan*/  USB_CFG1 ; 
 int /*<<< orphan*/  USB_CFG1_DEV_U1_INIT_EN_ ; 
 int /*<<< orphan*/  USB_CFG1_DEV_U2_INIT_EN_ ; 
 scalar_t__ USB_SPEED_SUPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int FUNC1 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct lan78xx_net*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct lan78xx_net*,int /*<<< orphan*/ ,TYPE_3__*,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*,struct ethtool_link_ksettings*) ; 
 int FUNC7 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct lan78xx_net *dev)
{
	struct phy_device *phydev = dev->net->phydev;
	struct ethtool_link_ksettings ecmd;
	int ladv, radv, ret;
	u32 buf;

	/* clear LAN78xx interrupt status */
	ret = FUNC3(dev, INT_STS, INT_STS_PHY_INT_);
	if (FUNC11(ret < 0))
		return -EIO;

	FUNC8(phydev);

	if (!phydev->link && dev->link_on) {
		dev->link_on = false;

		/* reset MAC */
		ret = FUNC1(dev, MAC_CR, &buf);
		if (FUNC11(ret < 0))
			return -EIO;
		buf |= MAC_CR_RST_;
		ret = FUNC3(dev, MAC_CR, buf);
		if (FUNC11(ret < 0))
			return -EIO;

		FUNC0(&dev->stat_monitor);
	} else if (phydev->link && !dev->link_on) {
		dev->link_on = true;

		FUNC6(phydev, &ecmd);

		if (dev->udev->speed == USB_SPEED_SUPER) {
			if (ecmd.base.speed == 1000) {
				/* disable U2 */
				ret = FUNC1(dev, USB_CFG1, &buf);
				buf &= ~USB_CFG1_DEV_U2_INIT_EN_;
				ret = FUNC3(dev, USB_CFG1, buf);
				/* enable U1 */
				ret = FUNC1(dev, USB_CFG1, &buf);
				buf |= USB_CFG1_DEV_U1_INIT_EN_;
				ret = FUNC3(dev, USB_CFG1, buf);
			} else {
				/* enable U1 & U2 */
				ret = FUNC1(dev, USB_CFG1, &buf);
				buf |= USB_CFG1_DEV_U2_INIT_EN_;
				buf |= USB_CFG1_DEV_U1_INIT_EN_;
				ret = FUNC3(dev, USB_CFG1, buf);
			}
		}

		ladv = FUNC7(phydev, MII_ADVERTISE);
		if (ladv < 0)
			return ladv;

		radv = FUNC7(phydev, MII_LPA);
		if (radv < 0)
			return radv;

		FUNC5(dev, link, dev->net,
			  "speed: %u duplex: %d anadv: 0x%04x anlpa: 0x%04x",
			  ecmd.base.speed, ecmd.base.duplex, ladv, radv);

		ret = FUNC2(dev, ecmd.base.duplex, ladv,
						 radv);

		if (!FUNC10(&dev->stat_monitor)) {
			dev->delta = 1;
			FUNC4(&dev->stat_monitor,
				  jiffies + STAT_UPDATE_TIMER);
		}

		FUNC9(&dev->bh);
	}

	return ret;
}