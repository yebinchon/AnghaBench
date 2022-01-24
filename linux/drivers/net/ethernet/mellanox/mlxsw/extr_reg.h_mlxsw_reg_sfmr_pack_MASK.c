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
typedef  enum mlxsw_reg_sfmr_op { ____Placeholder_mlxsw_reg_sfmr_op } mlxsw_reg_sfmr_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  sfmr ; 

__attribute__((used)) static inline void FUNC6(char *payload,
				       enum mlxsw_reg_sfmr_op op, u16 fid,
				       u16 fid_offset)
{
	FUNC0(sfmr, payload);
	FUNC3(payload, op);
	FUNC2(payload, fid);
	FUNC1(payload, fid_offset);
	FUNC4(payload, false);
	FUNC5(payload, false);
}