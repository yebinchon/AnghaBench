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
struct mlxsw_sp {int dummy; } ;
struct devlink_dpipe_dump_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int FUNC0 (struct mlxsw_sp*,int,struct devlink_dpipe_dump_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(void *priv, bool counters_enabled,
					struct devlink_dpipe_dump_ctx *dump_ctx)
{
	struct mlxsw_sp *mlxsw_sp = priv;

	return FUNC0(mlxsw_sp,
						      counters_enabled,
						      dump_ctx, AF_INET6);
}