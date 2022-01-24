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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RALUE_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RALXX_PROTOCOL_IPV4 ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ralue ; 

__attribute__((used)) static int
FUNC4(struct mlxsw_sp *mlxsw_sp,
				      u32 dip, u8 prefix_len, u16 ul_vr_id,
				      enum mlxsw_reg_ralue_op op,
				      u32 tunnel_index)
{
	char ralue_pl[MLXSW_REG_RALUE_LEN];

	FUNC2(ralue_pl, MLXSW_REG_RALXX_PROTOCOL_IPV4, op,
			      ul_vr_id, prefix_len, dip);
	FUNC1(ralue_pl, tunnel_index);
	return FUNC3(mlxsw_sp->core, FUNC0(ralue), ralue_pl);
}