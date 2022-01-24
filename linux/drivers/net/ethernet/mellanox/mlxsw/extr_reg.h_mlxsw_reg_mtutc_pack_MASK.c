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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum mlxsw_reg_mtutc_operation { ____Placeholder_mlxsw_reg_mtutc_operation } mlxsw_reg_mtutc_operation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtutc ; 

__attribute__((used)) static inline void
FUNC4(char *payload, enum mlxsw_reg_mtutc_operation oper,
		     u32 freq_adj, u32 utc_sec)
{
	FUNC0(mtutc, payload);
	FUNC2(payload, oper);
	FUNC1(payload, freq_adj);
	FUNC3(payload, utc_sec);
}