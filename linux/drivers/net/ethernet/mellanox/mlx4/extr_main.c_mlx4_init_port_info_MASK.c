#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int mode; int /*<<< orphan*/  name; } ;
struct TYPE_12__ {TYPE_3__ attr; int /*<<< orphan*/  show; int /*<<< orphan*/  store; } ;
struct mlx4_port_info {int port; int /*<<< orphan*/  devlink_port; TYPE_6__ port_attr; struct mlx4_dev* dev; TYPE_6__ port_mtu_attr; int /*<<< orphan*/  dev_mtu_name; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  base_qpn; int /*<<< orphan*/  gid_table; int /*<<< orphan*/  vlan_table; int /*<<< orphan*/  mac_table; } ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct devlink {int dummy; } ;
struct TYPE_11__ {struct mlx4_port_info* port; } ;
struct TYPE_9__ {TYPE_1__* pdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int FUNC2 (struct devlink*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*) ; 
 TYPE_4__* FUNC11 (struct mlx4_dev*) ; 
 struct devlink* FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  set_port_ib_mtu ; 
 int /*<<< orphan*/  set_port_type ; 
 int /*<<< orphan*/  show_port_ib_mtu ; 
 int /*<<< orphan*/  show_port_type ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC15(struct mlx4_dev *dev, int port)
{
	struct devlink *devlink = FUNC12(FUNC11(dev));
	struct mlx4_port_info *info = &FUNC11(dev)->port[port];
	int err;

	err = FUNC2(devlink, &info->devlink_port, port);
	if (err)
		return err;

	info->dev = dev;
	info->port = port;
	if (!FUNC10(dev)) {
		FUNC6(dev, &info->mac_table);
		FUNC8(dev, &info->vlan_table);
		FUNC7(dev, &info->gid_table);
		info->base_qpn = FUNC5(dev, port);
	}

	FUNC13(info->dev_name, "mlx4_port%d", port);
	info->port_attr.attr.name = info->dev_name;
	if (FUNC9(dev)) {
		info->port_attr.attr.mode = 0444;
	} else {
		info->port_attr.attr.mode = 0644;
		info->port_attr.store     = set_port_type;
	}
	info->port_attr.show      = show_port_type;
	FUNC14(&info->port_attr.attr);

	err = FUNC0(&dev->persist->pdev->dev, &info->port_attr);
	if (err) {
		FUNC4(dev, "Failed to create file for port %d\n", port);
		FUNC3(&info->devlink_port);
		info->port = -1;
		return err;
	}

	FUNC13(info->dev_mtu_name, "mlx4_port%d_mtu", port);
	info->port_mtu_attr.attr.name = info->dev_mtu_name;
	if (FUNC9(dev)) {
		info->port_mtu_attr.attr.mode = 0444;
	} else {
		info->port_mtu_attr.attr.mode = 0644;
		info->port_mtu_attr.store     = set_port_ib_mtu;
	}
	info->port_mtu_attr.show      = show_port_ib_mtu;
	FUNC14(&info->port_mtu_attr.attr);

	err = FUNC0(&dev->persist->pdev->dev,
				 &info->port_mtu_attr);
	if (err) {
		FUNC4(dev, "Failed to create mtu file for port %d\n", port);
		FUNC1(&info->dev->persist->pdev->dev,
				   &info->port_attr);
		FUNC3(&info->devlink_port);
		info->port = -1;
		return err;
	}

	return 0;
}