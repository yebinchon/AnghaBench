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
struct rocker_port {int dummy; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int,int) ; 
 struct rocker_port* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int FUNC3 (struct rocker_port*,int) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int new_mtu)
{
	struct rocker_port *rocker_port = FUNC1(dev);
	int running = FUNC2(dev);
	int err;

	if (running)
		FUNC5(dev);

	FUNC0(dev, "MTU change from %d to %d\n", dev->mtu, new_mtu);
	dev->mtu = new_mtu;

	err = FUNC3(rocker_port, new_mtu);
	if (err)
		return err;

	if (running)
		err = FUNC4(dev);

	return err;
}