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
typedef  int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;
struct macvlan_dev {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int NLM_F_REPLACE ; 
 int FUNC0 (struct net_device*,unsigned char const*) ; 
 int FUNC1 (struct net_device*,unsigned char const*) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 scalar_t__ FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct macvlan_dev* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct ndmsg *ndm, struct nlattr *tb[],
			   struct net_device *dev,
			   const unsigned char *addr, u16 vid,
			   u16 flags,
			   struct netlink_ext_ack *extack)
{
	struct macvlan_dev *vlan = FUNC5(dev);
	int err = -EINVAL;

	/* Support unicast filter only on passthru devices.
	 * Multicast filter should be allowed on all devices.
	 */
	if (!FUNC4(vlan->port) && FUNC3(addr))
		return -EOPNOTSUPP;

	if (flags & NLM_F_REPLACE)
		return -EOPNOTSUPP;

	if (FUNC3(addr))
		err = FUNC1(dev, addr);
	else if (FUNC2(addr))
		err = FUNC0(dev, addr);

	return err;
}