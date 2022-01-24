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
struct mlxsw_sp_port {int dummy; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_SETUP_BLOCK 130 
#define  TC_SETUP_QDISC_PRIO 129 
#define  TC_SETUP_QDISC_RED 128 
 int FUNC0 (struct mlxsw_sp_port*,void*) ; 
 int FUNC1 (struct mlxsw_sp_port*,void*) ; 
 int FUNC2 (struct mlxsw_sp_port*,void*) ; 
 struct mlxsw_sp_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, enum tc_setup_type type,
			     void *type_data)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC3(dev);

	switch (type) {
	case TC_SETUP_BLOCK:
		return FUNC0(mlxsw_sp_port, type_data);
	case TC_SETUP_QDISC_RED:
		return FUNC2(mlxsw_sp_port, type_data);
	case TC_SETUP_QDISC_PRIO:
		return FUNC1(mlxsw_sp_port, type_data);
	default:
		return -EOPNOTSUPP;
	}
}