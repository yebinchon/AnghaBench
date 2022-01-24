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
#define  NETDEV_CHANGEADDR 131 
#define  NETDEV_CHANGEMTU 130 
#define  NETDEV_DOWN 129 
#define  NETDEV_GOING_DOWN 128 
 int NOTIFY_DONE ; 
 struct net_device* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *this,
			      unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC0(ptr);

	/* Only look at sockets that are using this specific device. */
	switch (event) {
	case NETDEV_CHANGEADDR:
	case NETDEV_CHANGEMTU:
		/* A change in mtu or address is a bad thing, requiring
		 * LCP re-negotiation.
		 */

	case NETDEV_GOING_DOWN:
	case NETDEV_DOWN:
		/* Find every socket on this device and kill it. */
		FUNC1(dev);
		break;

	default:
		break;
	}

	return NOTIFY_DONE;
}