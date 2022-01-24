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
struct net_device {int dummy; } ;
struct igb_adapter {unsigned int flags; } ;

/* Variables and functions */
 unsigned int IGB_FLAG_RX_LEGACY ; 
 int IGB_PRIV_FLAGS_LEGACY_RX ; 
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*) ; 
 struct igb_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, u32 priv_flags)
{
	struct igb_adapter *adapter = FUNC1(netdev);
	unsigned int flags = adapter->flags;

	flags &= ~IGB_FLAG_RX_LEGACY;
	if (priv_flags & IGB_PRIV_FLAGS_LEGACY_RX)
		flags |= IGB_FLAG_RX_LEGACY;

	if (flags != adapter->flags) {
		adapter->flags = flags;

		/* reset interface to repopulate queues */
		if (FUNC2(netdev))
			FUNC0(adapter);
	}

	return 0;
}