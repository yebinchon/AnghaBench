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
typedef  enum mlxsw_reg_spmlr_learn_mode { ____Placeholder_mlxsw_reg_spmlr_learn_mode } mlxsw_reg_spmlr_learn_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spmlr ; 

__attribute__((used)) static inline void FUNC4(char *payload, u8 local_port,
					enum mlxsw_reg_spmlr_learn_mode mode)
{
	FUNC0(spmlr, payload);
	FUNC2(payload, local_port);
	FUNC3(payload, 0);
	FUNC1(payload, mode);
}