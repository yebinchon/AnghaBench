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
typedef  enum mlxsw_reg_prcr_op { ____Placeholder_mlxsw_reg_prcr_op } mlxsw_reg_prcr_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  prcr ; 

__attribute__((used)) static inline void FUNC7(char *payload, enum mlxsw_reg_prcr_op op,
				       const char *src_tcam_region_info,
				       u16 src_offset,
				       const char *dest_tcam_region_info,
				       u16 dest_offset, u16 size)
{
	FUNC0(prcr, payload);
	FUNC4(payload, op);
	FUNC3(payload, src_offset);
	FUNC5(payload, size);
	FUNC6(payload,
						  src_tcam_region_info);
	FUNC1(payload, dest_offset);
	FUNC2(payload,
						       dest_tcam_region_info);
}