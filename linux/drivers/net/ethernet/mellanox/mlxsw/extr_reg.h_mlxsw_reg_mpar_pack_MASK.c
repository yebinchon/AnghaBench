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
typedef  enum mlxsw_reg_mpar_i_e { ____Placeholder_mlxsw_reg_mpar_i_e } mlxsw_reg_mpar_i_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpar ; 

__attribute__((used)) static inline void FUNC5(char *payload, u8 local_port,
				       enum mlxsw_reg_mpar_i_e i_e,
				       bool enable, u8 pa_id)
{
	FUNC0(mpar, payload);
	FUNC3(payload, local_port);
	FUNC1(payload, enable);
	FUNC2(payload, i_e);
	FUNC4(payload, pa_id);
}