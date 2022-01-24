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

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_SLDR_OP_LAG_ADD_PORT_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sldr ; 

__attribute__((used)) static inline void FUNC5(char *payload, u8 lag_id,
						    u8 local_port)
{
	FUNC0(sldr, payload);
	FUNC3(payload, MLXSW_REG_SLDR_OP_LAG_ADD_PORT_LIST);
	FUNC1(payload, lag_id);
	FUNC2(payload, 1);
	FUNC4(payload, 0, local_port);
}