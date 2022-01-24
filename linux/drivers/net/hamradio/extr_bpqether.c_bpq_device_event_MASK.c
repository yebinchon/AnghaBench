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
#define  NETDEV_DOWN 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(struct notifier_block *this,
			    unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC7(ptr);

	if (!FUNC6(FUNC5(dev), &init_net))
		return NOTIFY_DONE;

	if (!FUNC4(dev))
		return NOTIFY_DONE;

	switch (event) {
	case NETDEV_UP:		/* new ethernet device -> new BPQ interface */
		if (FUNC1(dev) == NULL)
			FUNC2(dev);
		break;

	case NETDEV_DOWN:	/* ethernet device closed -> close BPQ interface */
		if ((dev = FUNC1(dev)) != NULL)
			FUNC3(dev);
		break;

	case NETDEV_UNREGISTER:	/* ethernet device removed -> free BPQ interface */
		if ((dev = FUNC1(dev)) != NULL)
			FUNC0(dev);
		break;
	default:
		break;
	}

	return NOTIFY_DONE;
}