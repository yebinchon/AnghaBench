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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_MCQI_CAP_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_MCQI_INFO_TYPE_CAPABILITIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mcqi ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(char *payload, u16 component_index)
{
	FUNC0(mcqi, payload);
	FUNC1(payload, component_index);
	FUNC3(payload,
				     MLXSW_REG_MCQI_INFO_TYPE_CAPABILITIES);
	FUNC4(payload, 0);
	FUNC2(payload, MLXSW_REG_MCQI_CAP_LEN);
}