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
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SR_PAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, void *p)
{
	struct usbnet *dev = FUNC3(netdev);
	struct sockaddr *addr = p;

	if (!FUNC0(addr->sa_data)) {
		FUNC2(netdev, "not setting invalid mac address %pM\n",
			   addr->sa_data);
		return -EINVAL;
	}

	FUNC1(netdev->dev_addr, addr->sa_data, netdev->addr_len);
	FUNC4(dev, SR_PAR, 6, netdev->dev_addr);

	return 0;
}