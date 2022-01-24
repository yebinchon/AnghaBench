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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_ACCESS_MAC ; 
 int /*<<< orphan*/  AX_NODE_ID ; 
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *net, void *p)
{
	struct usbnet *dev = FUNC3(net);
	struct sockaddr *addr = p;
	int ret;

	if (FUNC4(net))
		return -EBUSY;
	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(net->dev_addr, addr->sa_data, ETH_ALEN);

	/* Set the MAC address */
	ret = FUNC0(dev, AX_ACCESS_MAC, AX_NODE_ID, ETH_ALEN,
				 ETH_ALEN, net->dev_addr);
	if (ret < 0)
		return ret;

	return 0;
}