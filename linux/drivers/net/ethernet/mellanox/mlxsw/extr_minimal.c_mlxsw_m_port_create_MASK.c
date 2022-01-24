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
typedef  size_t u8 ;
struct net_device {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct mlxsw_m_port {size_t local_port; size_t module; struct mlxsw_m* mlxsw_m; struct net_device* dev; } ;
struct mlxsw_m {int /*<<< orphan*/  core; struct mlxsw_m_port** ports; TYPE_1__* bus_info; int /*<<< orphan*/  base_mac; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,struct mlxsw_m_port*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ ,size_t,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct mlxsw_m_port*) ; 
 int /*<<< orphan*/  mlxsw_m_port_ethtool_ops ; 
 int /*<<< orphan*/  mlxsw_m_port_netdev_ops ; 
 struct mlxsw_m_port* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int FUNC10 (struct net_device*) ; 

__attribute__((used)) static int
FUNC11(struct mlxsw_m *mlxsw_m, u8 local_port, u8 module)
{
	struct mlxsw_m_port *mlxsw_m_port;
	struct net_device *dev;
	int err;

	err = FUNC6(mlxsw_m->core, local_port,
				   module + 1, false, 0,
				   mlxsw_m->base_mac,
				   sizeof(mlxsw_m->base_mac));
	if (err) {
		FUNC2(mlxsw_m->bus_info->dev, "Port %d: Failed to init core port\n",
			local_port);
		return err;
	}

	dev = FUNC1(sizeof(struct mlxsw_m_port));
	if (!dev) {
		err = -ENOMEM;
		goto err_alloc_etherdev;
	}

	FUNC0(dev, mlxsw_m->bus_info->dev);
	mlxsw_m_port = FUNC8(dev);
	mlxsw_m_port->dev = dev;
	mlxsw_m_port->mlxsw_m = mlxsw_m;
	mlxsw_m_port->local_port = local_port;
	mlxsw_m_port->module = module;

	dev->netdev_ops = &mlxsw_m_port_netdev_ops;
	dev->ethtool_ops = &mlxsw_m_port_ethtool_ops;

	err = FUNC7(mlxsw_m_port);
	if (err) {
		FUNC2(mlxsw_m->bus_info->dev, "Port %d: Unable to get port mac address\n",
			mlxsw_m_port->local_port);
		goto err_dev_addr_get;
	}

	FUNC9(dev);
	mlxsw_m->ports[local_port] = mlxsw_m_port;
	err = FUNC10(dev);
	if (err) {
		FUNC2(mlxsw_m->bus_info->dev, "Port %d: Failed to register netdev\n",
			mlxsw_m_port->local_port);
		goto err_register_netdev;
	}

	FUNC4(mlxsw_m->core, mlxsw_m_port->local_port,
				mlxsw_m_port, dev);

	return 0;

err_register_netdev:
	mlxsw_m->ports[local_port] = NULL;
	FUNC3(dev);
err_dev_addr_get:
err_alloc_etherdev:
	FUNC5(mlxsw_m->core, local_port);
	return err;
}