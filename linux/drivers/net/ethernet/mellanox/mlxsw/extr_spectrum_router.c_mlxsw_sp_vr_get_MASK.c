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
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_vr {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_vr* FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct mlxsw_sp_vr* FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_sp_vr *FUNC3(struct mlxsw_sp *mlxsw_sp, u32 tb_id,
					   struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_vr *vr;

	tb_id = FUNC0(tb_id);
	vr = FUNC2(mlxsw_sp, tb_id);
	if (!vr)
		vr = FUNC1(mlxsw_sp, tb_id, extack);
	return vr;
}