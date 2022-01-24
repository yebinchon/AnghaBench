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
struct usbnet {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_ACCESS_MAC ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  SFR_NODE_ID ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,void*) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *net, void *p)
{
	struct usbnet *dev = FUNC2(net);
	int ret = 0;

	ret = FUNC1(net, p);
	if (ret < 0)
		return ret;

	/* Set the MAC address */
	return FUNC0(dev, AQ_ACCESS_MAC, SFR_NODE_ID, ETH_ALEN,
				ETH_ALEN, net->dev_addr);
}