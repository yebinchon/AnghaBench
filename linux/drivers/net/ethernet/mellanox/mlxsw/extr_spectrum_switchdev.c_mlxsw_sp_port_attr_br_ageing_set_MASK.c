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
typedef  scalar_t__ u32 ;
struct switchdev_trans {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 scalar_t__ MLXSW_SP_MAX_AGEING_TIME ; 
 scalar_t__ MLXSW_SP_MIN_AGEING_TIME ; 
 unsigned long FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (struct mlxsw_sp*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct switchdev_trans*) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp_port *mlxsw_sp_port,
					    struct switchdev_trans *trans,
					    unsigned long ageing_clock_t)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	unsigned long ageing_jiffies = FUNC0(ageing_clock_t);
	u32 ageing_time = FUNC1(ageing_jiffies) / 1000;

	if (FUNC3(trans)) {
		if (ageing_time < MLXSW_SP_MIN_AGEING_TIME ||
		    ageing_time > MLXSW_SP_MAX_AGEING_TIME)
			return -ERANGE;
		else
			return 0;
	}

	return FUNC2(mlxsw_sp, ageing_time);
}