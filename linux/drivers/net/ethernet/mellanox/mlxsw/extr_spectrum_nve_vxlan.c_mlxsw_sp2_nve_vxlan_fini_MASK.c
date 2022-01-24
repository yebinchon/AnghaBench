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
struct mlxsw_sp_nve_config {int /*<<< orphan*/  ul_sip; int /*<<< orphan*/  ul_proto; int /*<<< orphan*/  ul_tb_id; } ;
struct mlxsw_sp_nve {struct mlxsw_sp* mlxsw_sp; struct mlxsw_sp_nve_config config; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sp_nve *nve)
{
	struct mlxsw_sp_nve_config *config = &nve->config;
	struct mlxsw_sp *mlxsw_sp = nve->mlxsw_sp;

	FUNC2(mlxsw_sp, config->ul_tb_id,
					 config->ul_proto, &config->ul_sip);
	FUNC1(mlxsw_sp);
	FUNC0(mlxsw_sp, 0);
}