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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct enc28j60_net {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct enc28j60_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct enc28j60_net*) ; 
 int /*<<< orphan*/  FUNC3 (struct enc28j60_net*) ; 
 int /*<<< orphan*/  FUNC4 (struct enc28j60_net*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,...) ; 
 struct enc28j60_net* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct enc28j60_net*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct enc28j60_net *priv = FUNC8(dev);

	if (!FUNC6(dev->dev_addr)) {
		if (FUNC9(priv))
			FUNC7(dev, "invalid MAC address %pM\n", dev->dev_addr);
		return -EADDRNOTAVAIL;
	}
	/* Reset the hardware here (and take it out of low power mode) */
	FUNC4(priv, false);
	FUNC1(priv);
	if (!FUNC3(priv)) {
		if (FUNC9(priv))
			FUNC7(dev, "hw_reset() failed\n");
		return -EINVAL;
	}
	/* Update the MAC address (in case user has changed it) */
	FUNC5(dev);
	/* Enable interrupts */
	FUNC2(priv);
	/* check link status */
	FUNC0(dev);
	/* We are now ready to accept transmit requests from
	 * the queueing layer of the networking.
	 */
	FUNC10(dev);

	return 0;
}