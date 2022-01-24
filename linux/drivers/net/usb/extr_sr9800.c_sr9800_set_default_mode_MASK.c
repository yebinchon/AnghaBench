#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct usbnet {int /*<<< orphan*/  net; TYPE_1__ mii; } ;

/* Variables and functions */
 int ADVERTISE_ALL ; 
 int ADVERTISE_CSMA ; 
 int BMCR_RESET ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int SR9800_IPG0_DEFAULT ; 
 int SR9800_IPG1_DEFAULT ; 
 int /*<<< orphan*/  SR9800_IPG2_DEFAULT ; 
 int /*<<< orphan*/  SR9800_MEDIUM_DEFAULT ; 
 int /*<<< orphan*/  SR_CMD_WRITE_IPG012 ; 
 int /*<<< orphan*/  SR_DEFAULT_RX_CTL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct usbnet*) ; 
 int FUNC4 (struct usbnet*) ; 
 int FUNC5 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usbnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usbnet *dev)
{
	u16 rx_ctl;
	int ret;

	FUNC2(dev->net, dev->mii.phy_id, MII_BMCR, BMCR_RESET);
	FUNC2(dev->net, dev->mii.phy_id, MII_ADVERTISE,
		      ADVERTISE_ALL | ADVERTISE_CSMA);
	FUNC0(&dev->mii);

	ret = FUNC6(dev, SR9800_MEDIUM_DEFAULT);
	if (ret < 0)
		goto out;

	ret = FUNC5(dev, SR_CMD_WRITE_IPG012,
				SR9800_IPG0_DEFAULT | SR9800_IPG1_DEFAULT,
				SR9800_IPG2_DEFAULT, 0, NULL);
	if (ret < 0) {
		FUNC1(dev->net, "Write IPG,IPG1,IPG2 failed: %d\n", ret);
		goto out;
	}

	/* Set RX_CTL to default values with 2k buffer, and enable cactus */
	ret = FUNC7(dev, SR_DEFAULT_RX_CTL);
	if (ret < 0)
		goto out;

	rx_ctl = FUNC4(dev);
	FUNC1(dev->net, "RX_CTL is 0x%04x after all initializations\n",
		   rx_ctl);

	rx_ctl = FUNC3(dev);
	FUNC1(dev->net, "Medium Status:0x%04x after all initializations\n",
		   rx_ctl);

	return 0;
out:
	return ret;
}