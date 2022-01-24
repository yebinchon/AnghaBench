#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct mlxsw_sx_port {struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {TYPE_2__* bus_info; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_3__ {int major; int minor; int subminor; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_name; TYPE_1__ fw_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  mlxsw_sx_driver_name ; 
 int /*<<< orphan*/  mlxsw_sx_driver_version ; 
 struct mlxsw_sx_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				      struct ethtool_drvinfo *drvinfo)
{
	struct mlxsw_sx_port *mlxsw_sx_port = FUNC0(dev);
	struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;

	FUNC2(drvinfo->driver, mlxsw_sx_driver_name, sizeof(drvinfo->driver));
	FUNC2(drvinfo->version, mlxsw_sx_driver_version,
		sizeof(drvinfo->version));
	FUNC1(drvinfo->fw_version, sizeof(drvinfo->fw_version),
		 "%d.%d.%d",
		 mlxsw_sx->bus_info->fw_rev.major,
		 mlxsw_sx->bus_info->fw_rev.minor,
		 mlxsw_sx->bus_info->fw_rev.subminor);
	FUNC2(drvinfo->bus_info, mlxsw_sx->bus_info->device_name,
		sizeof(drvinfo->bus_info));
}