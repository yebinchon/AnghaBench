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
struct net_device {int mtu; } ;
struct mlxsw_sp_port {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp_port*,int,int) ; 
 int FUNC1 (struct mlxsw_sp_port*) ; 
 int FUNC2 (struct mlxsw_sp_port*,int) ; 
 int FUNC3 (struct mlxsw_sp_port*,int) ; 
 struct mlxsw_sp_port* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, int mtu)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC4(dev);
	bool pause_en = FUNC1(mlxsw_sp_port);
	int err;

	err = FUNC0(mlxsw_sp_port, mtu, pause_en);
	if (err)
		return err;
	err = FUNC3(mlxsw_sp_port, mtu);
	if (err)
		goto err_span_port_mtu_update;
	err = FUNC2(mlxsw_sp_port, mtu);
	if (err)
		goto err_port_mtu_set;
	dev->mtu = mtu;
	return 0;

err_port_mtu_set:
	FUNC3(mlxsw_sp_port, dev->mtu);
err_span_port_mtu_update:
	FUNC0(mlxsw_sp_port, dev->mtu, pause_en);
	return err;
}