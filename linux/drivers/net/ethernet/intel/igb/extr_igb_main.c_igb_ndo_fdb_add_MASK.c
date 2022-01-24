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
typedef  int /*<<< orphan*/  u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct igb_adapter*,int) ; 
 scalar_t__ FUNC1 (unsigned char const*) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 int FUNC3 (struct ndmsg*,struct nlattr**,struct net_device*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct igb_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct ndmsg *ndm, struct nlattr *tb[],
			   struct net_device *dev,
			   const unsigned char *addr, u16 vid,
			   u16 flags,
			   struct netlink_ext_ack *extack)
{
	/* guarantee we can provide a unique filter for the unicast address */
	if (FUNC2(addr) || FUNC1(addr)) {
		struct igb_adapter *adapter = FUNC4(dev);
		int vfn = adapter->vfs_allocated_count;

		if (FUNC5(dev) >= FUNC0(adapter, vfn))
			return -ENOMEM;
	}

	return FUNC3(ndm, tb, dev, addr, vid, flags);
}