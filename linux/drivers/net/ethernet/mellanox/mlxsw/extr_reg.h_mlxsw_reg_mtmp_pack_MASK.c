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
 int /*<<< orphan*/  MLXSW_REG_MTMP_THRESH_HI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtmp ; 

__attribute__((used)) static inline void FUNC5(char *payload, u16 sensor_index,
				       bool max_temp_enable,
				       bool max_temp_reset)
{
	FUNC0(mtmp, payload);
	FUNC3(payload, sensor_index);
	FUNC1(payload, max_temp_enable);
	FUNC2(payload, max_temp_reset);
	FUNC4(payload,
						    MLXSW_REG_MTMP_THRESH_HI);
}