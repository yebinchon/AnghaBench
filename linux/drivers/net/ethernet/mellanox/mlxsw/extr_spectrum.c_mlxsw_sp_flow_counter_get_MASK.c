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
typedef  int /*<<< orphan*/  u64 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_FLOW_COUNTER_SET_TYPE_PACKETS_BYTES ; 
 int MLXSW_REG_MGPC_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_MGPC_OPCODE_NOP ; 
 int /*<<< orphan*/  mgpc ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int FUNC5(struct mlxsw_sp *mlxsw_sp,
			      unsigned int counter_index, u64 *packets,
			      u64 *bytes)
{
	char mgpc_pl[MLXSW_REG_MGPC_LEN];
	int err;

	FUNC2(mgpc_pl, counter_index, MLXSW_REG_MGPC_OPCODE_NOP,
			    MLXSW_REG_FLOW_COUNTER_SET_TYPE_PACKETS_BYTES);
	err = FUNC4(mlxsw_sp->core, FUNC0(mgpc), mgpc_pl);
	if (err)
		return err;
	if (packets)
		*packets = FUNC3(mgpc_pl);
	if (bytes)
		*bytes = FUNC1(mgpc_pl);
	return 0;
}