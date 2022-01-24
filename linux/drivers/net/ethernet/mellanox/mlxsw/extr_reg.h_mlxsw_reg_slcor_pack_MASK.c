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
typedef  enum mlxsw_reg_slcor_col { ____Placeholder_mlxsw_reg_slcor_col } mlxsw_reg_slcor_col ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slcor ; 

__attribute__((used)) static inline void FUNC4(char *payload,
					u8 local_port, u16 lag_id,
					enum mlxsw_reg_slcor_col col)
{
	FUNC0(slcor, payload);
	FUNC1(payload, col);
	FUNC3(payload, local_port);
	FUNC2(payload, lag_id);
}