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
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct enic {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 scalar_t__ FUNC0 (struct enic*) ; 
 scalar_t__ FUNC1 (struct enic*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct enic* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, char *addr)
{
	struct enic *enic = FUNC5(netdev);

	if (FUNC0(enic) || FUNC1(enic)) {
		if (!FUNC2(addr) && !FUNC3(addr))
			return -EADDRNOTAVAIL;
	} else {
		if (!FUNC2(addr))
			return -EADDRNOTAVAIL;
	}

	FUNC4(netdev->dev_addr, addr, netdev->addr_len);

	return 0;
}