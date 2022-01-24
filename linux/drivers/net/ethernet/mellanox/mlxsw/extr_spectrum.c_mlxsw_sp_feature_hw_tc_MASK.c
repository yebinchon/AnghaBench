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
struct net_device {int dummy; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  eg_acl_block; int /*<<< orphan*/  ing_acl_block; int /*<<< orphan*/  mall_tc_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct mlxsw_sp_port* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, bool enable)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC5(dev);

	if (!enable) {
		if (FUNC3(mlxsw_sp_port->ing_acl_block) ||
		    FUNC3(mlxsw_sp_port->eg_acl_block) ||
		    !FUNC0(&mlxsw_sp_port->mall_tc_list)) {
			FUNC4(dev, "Active offloaded tc filters, can't turn hw_tc_offload off\n");
			return -EINVAL;
		}
		FUNC2(mlxsw_sp_port->ing_acl_block);
		FUNC2(mlxsw_sp_port->eg_acl_block);
	} else {
		FUNC1(mlxsw_sp_port->ing_acl_block);
		FUNC1(mlxsw_sp_port->eg_acl_block);
	}
	return 0;
}