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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pfc; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; } ;
struct ieee_pfc {int dummy; } ;

/* Variables and functions */
 int IEEE_8021QAZ_MAX_TCS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee_pfc*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mlxsw_sp_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 struct mlxsw_sp_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				      struct ieee_pfc *pfc)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC3(dev);
	int err, i;

	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		err = FUNC1(mlxsw_sp_port, i);
		if (err) {
			FUNC2(dev, "Failed to get PFC count for priority %d\n",
				   i);
			return err;
		}
	}

	FUNC0(pfc, mlxsw_sp_port->dcb.pfc, sizeof(*pfc));

	return 0;
}