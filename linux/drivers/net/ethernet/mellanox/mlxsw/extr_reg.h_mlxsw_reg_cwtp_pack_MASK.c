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
 int MLXSW_REG_CWTP_MAX_PROFILE ; 
 int /*<<< orphan*/  MLXSW_REG_CWTP_MIN_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cwtp ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(char *payload, u8 local_port,
				       u8 traffic_class)
{
	int i;

	FUNC0(cwtp, payload);
	FUNC1(payload, local_port);
	FUNC4(payload, traffic_class);

	for (i = 0; i <= MLXSW_REG_CWTP_MAX_PROFILE; i++) {
		FUNC3(payload, i,
					       MLXSW_REG_CWTP_MIN_VALUE);
		FUNC2(payload, i,
					       MLXSW_REG_CWTP_MIN_VALUE);
	}
}