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
struct net_device {int /*<<< orphan*/  priv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_L3MDEV_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct net_device *port_dev)
{
	FUNC1(port_dev, dev);
	port_dev->priv_flags &= ~IFF_L3MDEV_SLAVE;

	FUNC0(port_dev, NULL);

	return 0;
}