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
struct nsim_dev_port {int dummy; } ;
struct nsim_dev {TYPE_1__* nsim_bus_dev; } ;
struct netdevsim {TYPE_1__* nsim_bus_dev; struct nsim_dev_port* nsim_dev_port; struct nsim_dev* nsim_dev; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct netdevsim* FUNC0 (int) ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct netdevsim* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct netdevsim*) ; 
 int /*<<< orphan*/  FUNC6 (struct netdevsim*) ; 
 int /*<<< orphan*/  FUNC7 (struct netdevsim*) ; 
 int /*<<< orphan*/  FUNC8 (struct netdevsim*) ; 
 int /*<<< orphan*/  nsim_netdev_ops ; 
 int /*<<< orphan*/  nsim_setup ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

struct netdevsim *
FUNC12(struct nsim_dev *nsim_dev, struct nsim_dev_port *nsim_dev_port)
{
	struct net_device *dev;
	struct netdevsim *ns;
	int err;

	dev = FUNC2(sizeof(*ns), "eth%d", NET_NAME_UNKNOWN, nsim_setup);
	if (!dev)
		return FUNC0(-ENOMEM);

	ns = FUNC4(dev);
	ns->netdev = dev;
	ns->nsim_dev = nsim_dev;
	ns->nsim_dev_port = nsim_dev_port;
	ns->nsim_bus_dev = nsim_dev->nsim_bus_dev;
	FUNC1(dev, &ns->nsim_bus_dev->dev);
	dev->netdev_ops = &nsim_netdev_ops;

	FUNC10();
	err = FUNC5(ns);
	if (err)
		goto err_free_netdev;

	FUNC7(ns);

	err = FUNC9(dev);
	if (err)
		goto err_ipsec_teardown;
	FUNC11();

	return ns;

err_ipsec_teardown:
	FUNC8(ns);
	FUNC6(ns);
	FUNC11();
err_free_netdev:
	FUNC3(dev);
	return FUNC0(err);
}