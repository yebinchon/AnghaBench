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
typedef  enum mlxsw_reg_ptar_op { ____Placeholder_mlxsw_reg_ptar_op } mlxsw_reg_ptar_op ;
typedef  enum mlxsw_reg_ptar_key_type { ____Placeholder_mlxsw_reg_ptar_key_type } mlxsw_reg_ptar_key_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  ptar ; 

__attribute__((used)) static inline void FUNC7(char *payload, enum mlxsw_reg_ptar_op op,
				       enum mlxsw_reg_ptar_key_type key_type,
				       u16 region_size, u16 region_id,
				       const char *tcam_region_info)
{
	FUNC0(ptar, payload);
	FUNC3(payload, op);
	FUNC1(payload, 2); /* "flexible" */
	FUNC2(payload, key_type);
	FUNC5(payload, region_size);
	FUNC4(payload, region_id);
	FUNC6(payload, tcam_region_info);
}