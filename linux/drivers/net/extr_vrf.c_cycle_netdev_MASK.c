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
struct netlink_ext_ack {int dummy; } ;
struct net_device {unsigned int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int IFF_UP ; 
 int FUNC0 (struct net_device*,unsigned int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
			 struct netlink_ext_ack *extack)
{
	unsigned int flags = dev->flags;
	int ret;

	if (!FUNC2(dev))
		return;

	ret = FUNC0(dev, flags & ~IFF_UP, extack);
	if (ret >= 0)
		ret = FUNC0(dev, flags, extack);

	if (ret < 0) {
		FUNC1(dev,
			   "Failed to cycle device %s; route tables might be wrong!\n",
			   dev->name);
	}
}