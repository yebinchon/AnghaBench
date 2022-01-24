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
struct net_device {int /*<<< orphan*/  dev_addr; struct lbs_private* ml_priv; } ;
struct lbs_private {TYPE_1__* mesh_dev; int /*<<< orphan*/  current_addr; struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct net_device *dev, void *addr)
{
	int ret = 0;
	struct lbs_private *priv = dev->ml_priv;
	struct sockaddr *phwaddr = addr;

	/*
	 * Can only set MAC address when all interfaces are down, to be written
	 * to the hardware when one of them is brought up.
	 */
	if (FUNC0(priv))
		return -EBUSY;

	/* In case it was called from the mesh device */
	dev = priv->dev;

	FUNC1(priv->current_addr, phwaddr->sa_data, ETH_ALEN);
	FUNC1(dev->dev_addr, phwaddr->sa_data, ETH_ALEN);
	if (priv->mesh_dev)
		FUNC1(priv->mesh_dev->dev_addr, phwaddr->sa_data, ETH_ALEN);

	return ret;
}