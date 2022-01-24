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
struct dcb_app {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct dcb_app*) ; 
 int FUNC1 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct mlxsw_sp_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				      struct dcb_app *app)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC3(dev);
	int err;

	err = FUNC0(dev, app);
	if (err)
		return err;

	err = FUNC1(mlxsw_sp_port);
	if (err)
		FUNC2(dev, "Failed to update DCB APP configuration\n");
	return 0;
}