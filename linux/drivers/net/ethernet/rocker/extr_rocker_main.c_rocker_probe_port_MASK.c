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
struct rocker_port {unsigned int port_number; unsigned int pport; int /*<<< orphan*/  napi_rx; int /*<<< orphan*/  napi_tx; struct rocker* rocker; struct net_device* dev; } ;
struct rocker {struct rocker_port** ports; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int features; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int NETIF_F_NETNS_LOCAL ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  ROCKER_PORT_MAX_MTU ; 
 int /*<<< orphan*/  ROCKER_PORT_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct rocker_port* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct rocker_port*) ; 
 int /*<<< orphan*/  rocker_port_ethtool_ops ; 
 int /*<<< orphan*/  rocker_port_netdev_ops ; 
 int /*<<< orphan*/  rocker_port_poll_rx ; 
 int /*<<< orphan*/  rocker_port_poll_tx ; 
 int FUNC10 (struct rocker_port*) ; 
 int FUNC11 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct rocker_port*) ; 
 int FUNC13 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct rocker *rocker, unsigned int port_number)
{
	struct pci_dev *pdev = rocker->pdev;
	struct rocker_port *rocker_port;
	struct net_device *dev;
	int err;

	dev = FUNC1(sizeof(struct rocker_port));
	if (!dev)
		return -ENOMEM;
	FUNC0(dev, &pdev->dev);
	rocker_port = FUNC4(dev);
	rocker_port->dev = dev;
	rocker_port->rocker = rocker;
	rocker_port->port_number = port_number;
	rocker_port->pport = port_number + 1;

	err = FUNC10(rocker_port);
	if (err) {
		FUNC2(&pdev->dev, "world init failed\n");
		goto err_world_check_init;
	}

	FUNC9(rocker_port);
	dev->netdev_ops = &rocker_port_netdev_ops;
	dev->ethtool_ops = &rocker_port_ethtool_ops;
	FUNC6(dev, &rocker_port->napi_tx, rocker_port_poll_tx,
			  NAPI_POLL_WEIGHT);
	FUNC5(dev, &rocker_port->napi_rx, rocker_port_poll_rx,
		       NAPI_POLL_WEIGHT);
	FUNC8(rocker_port);

	dev->features |= NETIF_F_NETNS_LOCAL | NETIF_F_SG;

	/* MTU range: 68 - 9000 */
	dev->min_mtu = ROCKER_PORT_MIN_MTU;
	dev->max_mtu = ROCKER_PORT_MAX_MTU;

	err = FUNC13(rocker_port);
	if (err) {
		FUNC2(&pdev->dev, "port world pre-init failed\n");
		goto err_world_port_pre_init;
	}
	err = FUNC7(dev);
	if (err) {
		FUNC2(&pdev->dev, "register_netdev failed\n");
		goto err_register_netdev;
	}
	rocker->ports[port_number] = rocker_port;

	err = FUNC11(rocker_port);
	if (err) {
		FUNC2(&pdev->dev, "port world init failed\n");
		goto err_world_port_init;
	}

	return 0;

err_world_port_init:
	rocker->ports[port_number] = NULL;
	FUNC14(dev);
err_register_netdev:
	FUNC12(rocker_port);
err_world_port_pre_init:
err_world_check_init:
	FUNC3(dev);
	return err;
}