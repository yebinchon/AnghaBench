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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int flags; int /*<<< orphan*/  addr_assign_type; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EAGAIN ; 
 int IFF_UP ; 
 int /*<<< orphan*/  NET_ADDR_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 scalar_t__ FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct fm10k_intfc* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, void *p)
{
	struct fm10k_intfc *interface = FUNC6(dev);
	struct fm10k_hw *hw = &interface->hw;
	struct sockaddr *addr = p;
	s32 err = 0;

	if (!FUNC5(addr->sa_data))
		return -EADDRNOTAVAIL;

	if (dev->flags & IFF_UP) {
		/* setting MAC address requires mailbox */
		FUNC1(interface);

		err = FUNC3(dev, addr->sa_data);
		if (!err)
			FUNC4(dev, hw->mac.addr);

		FUNC2(interface);
	}

	if (!err) {
		FUNC0(dev->dev_addr, addr->sa_data);
		FUNC0(hw->mac.addr, addr->sa_data);
		dev->addr_assign_type &= ~NET_ADDR_RANDOM;
	}

	/* if we had a mailbox error suggest trying again */
	return err ? -EAGAIN : 0;
}