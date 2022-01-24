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
struct net_device {int flags; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_multicast_list {int /*<<< orphan*/  num_multicast_addr; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MWIFIEX_ALL_MULTI_MODE ; 
 scalar_t__ MWIFIEX_MAX_MULTICAST_LIST_SIZE ; 
 int /*<<< orphan*/  MWIFIEX_MULTICAST_MODE ; 
 int /*<<< orphan*/  MWIFIEX_PROMISC_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_multicast_list*,struct net_device*) ; 
 struct mwifiex_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_private*,struct mwifiex_multicast_list*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct mwifiex_private *priv = FUNC1(dev);
	struct mwifiex_multicast_list mcast_list;

	if (dev->flags & IFF_PROMISC) {
		mcast_list.mode = MWIFIEX_PROMISC_MODE;
	} else if (dev->flags & IFF_ALLMULTI ||
		   FUNC3(dev) > MWIFIEX_MAX_MULTICAST_LIST_SIZE) {
		mcast_list.mode = MWIFIEX_ALL_MULTI_MODE;
	} else {
		mcast_list.mode = MWIFIEX_MULTICAST_MODE;
		mcast_list.num_multicast_addr =
			FUNC0(&mcast_list, dev);
	}
	FUNC2(priv, &mcast_list);
}