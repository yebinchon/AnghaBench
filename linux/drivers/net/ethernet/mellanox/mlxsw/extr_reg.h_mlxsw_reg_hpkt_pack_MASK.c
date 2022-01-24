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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_reg_htgt_trap_group { ____Placeholder_mlxsw_reg_htgt_trap_group } mlxsw_reg_htgt_trap_group ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_HPKT_ACK_NOT_REQUIRED ; 
 int /*<<< orphan*/  MLXSW_REG_HPKT_CTRL_PACKET_NO_BUFFER ; 
 int /*<<< orphan*/  MLXSW_REG_HPKT_CTRL_PACKET_USE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hpkt ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(char *payload, u8 action, u16 trap_id,
				       enum mlxsw_reg_htgt_trap_group trap_group,
				       bool is_ctrl)
{
	FUNC0(hpkt, payload);
	FUNC1(payload, MLXSW_REG_HPKT_ACK_NOT_REQUIRED);
	FUNC2(payload, action);
	FUNC4(payload, trap_group);
	FUNC5(payload, trap_id);
	FUNC3(payload, is_ctrl ?
				MLXSW_REG_HPKT_CTRL_PACKET_USE_BUFFER :
				MLXSW_REG_HPKT_CTRL_PACKET_NO_BUFFER);
}