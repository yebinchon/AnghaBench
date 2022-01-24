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
typedef  enum mlxsw_reg_rtar_op { ____Placeholder_mlxsw_reg_rtar_op } mlxsw_reg_rtar_op ;
typedef  enum mlxsw_reg_rtar_key_type { ____Placeholder_mlxsw_reg_rtar_key_type } mlxsw_reg_rtar_key_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtar ; 

__attribute__((used)) static inline void FUNC4(char *payload,
				       enum mlxsw_reg_rtar_op op,
				       enum mlxsw_reg_rtar_key_type key_type,
				       u16 region_size)
{
	FUNC0(rtar, payload);
	FUNC2(payload, op);
	FUNC1(payload, key_type);
	FUNC3(payload, region_size);
}