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
typedef  enum mlxsw_reg_ritr_if_type { ____Placeholder_mlxsw_reg_ritr_if_type } mlxsw_reg_ritr_if_type ;

/* Variables and functions */
 int MLXSW_REG_RITR_FID_IF ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(char *payload,
					  enum mlxsw_reg_ritr_if_type rif_type,
					  u16 fid)
{
	if (rif_type == MLXSW_REG_RITR_FID_IF)
		FUNC0(payload, fid);
	else
		FUNC1(payload, fid);
}