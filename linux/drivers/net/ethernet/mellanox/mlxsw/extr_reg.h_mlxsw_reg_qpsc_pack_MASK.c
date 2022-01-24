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
typedef  enum mlxsw_reg_qpsc_port_speed { ____Placeholder_mlxsw_reg_qpsc_port_speed } mlxsw_reg_qpsc_port_speed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qpsc ; 

__attribute__((used)) static inline void
FUNC10(char *payload, enum mlxsw_reg_qpsc_port_speed port_speed,
		    u8 shaper_time_exp, u8 shaper_time_mantissa, u8 shaper_inc,
		    u8 shaper_bs, u8 port_to_shaper_credits,
		    int ing_timestamp_inc, int egr_timestamp_inc)
{
	FUNC0(qpsc, payload);
	FUNC3(payload, port_speed);
	FUNC8(payload, shaper_time_exp);
	FUNC9(payload, shaper_time_mantissa);
	FUNC7(payload, shaper_inc);
	FUNC6(payload, shaper_bs);
	FUNC5(payload, true);
	FUNC4(payload, port_to_shaper_credits);
	FUNC2(payload, ing_timestamp_inc);
	FUNC1(payload, egr_timestamp_inc);
}