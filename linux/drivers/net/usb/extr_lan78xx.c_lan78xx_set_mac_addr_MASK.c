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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int* dev_addr; } ;
struct lan78xx_net {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAF_HI_VALID_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_ADDRH ; 
 int /*<<< orphan*/  RX_ADDRL ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lan78xx_net*,int /*<<< orphan*/ ,int) ; 
 struct lan78xx_net* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, void *p)
{
	struct lan78xx_net *dev = FUNC5(netdev);
	struct sockaddr *addr = p;
	u32 addr_lo, addr_hi;
	int ret;

	if (FUNC6(netdev))
		return -EBUSY;

	if (!FUNC3(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(netdev->dev_addr, addr->sa_data);

	addr_lo = netdev->dev_addr[0] |
		  netdev->dev_addr[1] << 8 |
		  netdev->dev_addr[2] << 16 |
		  netdev->dev_addr[3] << 24;
	addr_hi = netdev->dev_addr[4] |
		  netdev->dev_addr[5] << 8;

	ret = FUNC4(dev, RX_ADDRL, addr_lo);
	ret = FUNC4(dev, RX_ADDRH, addr_hi);

	/* Added to support MAC address changes */
	ret = FUNC4(dev, FUNC1(0), addr_lo);
	ret = FUNC4(dev, FUNC0(0), addr_hi | MAF_HI_VALID_);

	return 0;
}