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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct lan78xx_net {int link_on; int /*<<< orphan*/  intf; int /*<<< orphan*/  flags; int /*<<< orphan*/  net; scalar_t__ urb_intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DEV_OPEN ; 
 int /*<<< orphan*/  EVENT_LINK_RESET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct lan78xx_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan78xx_net*) ; 
 struct lan78xx_net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *net)
{
	struct lan78xx_net *dev = FUNC2(net);
	int ret;

	ret = FUNC8(dev->intf);
	if (ret < 0)
		goto out;

	FUNC6(net->phydev);

	FUNC3(dev, ifup, dev->net, "phy initialised successfully");

	/* for Link Check */
	if (dev->urb_intr) {
		ret = FUNC10(dev->urb_intr, GFP_KERNEL);
		if (ret < 0) {
			FUNC4(dev, ifup, dev->net,
				  "intr submit %d\n", ret);
			goto done;
		}
	}

	FUNC1(dev);

	FUNC7(EVENT_DEV_OPEN, &dev->flags);

	FUNC5(net);

	dev->link_on = false;

	FUNC0(dev, EVENT_LINK_RESET);
done:
	FUNC9(dev->intf);

out:
	return ret;
}