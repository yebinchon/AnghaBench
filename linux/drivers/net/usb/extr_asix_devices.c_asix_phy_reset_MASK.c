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
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct usbnet {TYPE_1__ mii; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct usbnet *dev, unsigned int reset_bits)
{
	unsigned int timeout = 5000;

	FUNC1(dev->net, dev->mii.phy_id, MII_BMCR, reset_bits);

	/* give phy_id a chance to process reset */
	FUNC3(500);

	/* See IEEE 802.3 "22.2.4.1.1 Reset": 500ms max */
	while (timeout--) {
		if (FUNC0(dev->net, dev->mii.phy_id, MII_BMCR)
							& BMCR_RESET)
			FUNC3(100);
		else
			return;
	}

	FUNC2(dev->net, "BMCR_RESET timeout on phy_id %d\n",
		   dev->mii.phy_id);
}