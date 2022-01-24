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
struct slcan {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  lock; struct net_device* dev; int /*<<< orphan*/  magic; } ;
struct net_device {int base_addr; void* ml_priv; } ;
struct can_ml_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETDEV_ALIGN ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int /*<<< orphan*/  SLCAN_MAGIC ; 
 struct net_device* FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int maxdev ; 
 struct slcan* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  slc_setup ; 
 struct net_device** slcan_devs ; 
 int /*<<< orphan*/  slcan_transmit ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static struct slcan *FUNC6(void)
{
	int i;
	char name[IFNAMSIZ];
	struct net_device *dev = NULL;
	struct slcan       *sl;
	int size;

	for (i = 0; i < maxdev; i++) {
		dev = slcan_devs[i];
		if (dev == NULL)
			break;

	}

	/* Sorry, too many, all slots in use */
	if (i >= maxdev)
		return NULL;

	FUNC5(name, "slcan%d", i);
	size = FUNC0(sizeof(*sl), NETDEV_ALIGN) + sizeof(struct can_ml_priv);
	dev = FUNC2(size, name, NET_NAME_UNKNOWN, slc_setup);
	if (!dev)
		return NULL;

	dev->base_addr  = i;
	sl = FUNC3(dev);
	dev->ml_priv = (void *)sl + FUNC0(sizeof(*sl), NETDEV_ALIGN);

	/* Initialize channel control data */
	sl->magic = SLCAN_MAGIC;
	sl->dev	= dev;
	FUNC4(&sl->lock);
	FUNC1(&sl->tx_work, slcan_transmit);
	slcan_devs[i] = dev;

	return sl;
}