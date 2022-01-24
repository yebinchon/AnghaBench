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
typedef  enum mlxsw_reg_rauht_op { ____Placeholder_mlxsw_reg_rauht_op } mlxsw_reg_rauht_op ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_RAUHT_TYPE_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(char *payload,
					 enum mlxsw_reg_rauht_op op, u16 rif,
					 const char *mac, const char *dip)
{
	FUNC1(payload, op, rif, mac);
	FUNC2(payload, MLXSW_REG_RAUHT_TYPE_IPV6);
	FUNC0(payload, dip);
}