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
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct mlxsw_core {int dummy; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct mlxsw_sp* FUNC0 (struct mlxsw_core*) ; 
 int FUNC1 (struct mlxsw_sp*,struct firmware const*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_core *mlxsw_core,
				 const char *file_name, const char *component,
				 struct netlink_ext_ack *extack)
{
	struct mlxsw_sp *mlxsw_sp = FUNC0(mlxsw_core);
	const struct firmware *firmware;
	int err;

	if (component)
		return -EOPNOTSUPP;

	err = FUNC3(&firmware, file_name,
				      mlxsw_sp->bus_info->dev);
	if (err)
		return err;
	err = FUNC1(mlxsw_sp, firmware, extack);
	FUNC2(firmware);

	return err;
}