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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned long NETDEV_REGISTER ; 
 unsigned long NETDEV_UDP_TUNNEL_DROP_INFO ; 
 unsigned long NETDEV_UDP_TUNNEL_PUSH_INFO ; 
 unsigned long NETDEV_UNREGISTER ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 struct net_device* FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *unused,
				  unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC1(ptr);

	if (event == NETDEV_UDP_TUNNEL_PUSH_INFO ||
	    event == NETDEV_UDP_TUNNEL_DROP_INFO) {
		FUNC0(dev, event == NETDEV_UDP_TUNNEL_PUSH_INFO);
	} else if (event == NETDEV_UNREGISTER) {
		FUNC0(dev, false);
	} else if (event == NETDEV_REGISTER) {
		FUNC0(dev, true);
	}

	return NOTIFY_DONE;
}