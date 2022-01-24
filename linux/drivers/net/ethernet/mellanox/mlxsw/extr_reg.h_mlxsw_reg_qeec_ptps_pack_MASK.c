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
 int /*<<< orphan*/  MLXSW_REG_QEEC_HIERARCY_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  qeec ; 

__attribute__((used)) static inline void FUNC4(char *payload, u8 local_port,
					    bool ptps)
{
	FUNC0(qeec, payload);
	FUNC2(payload, local_port);
	FUNC1(payload,
					     MLXSW_REG_QEEC_HIERARCY_PORT);
	FUNC3(payload, ptps);
}