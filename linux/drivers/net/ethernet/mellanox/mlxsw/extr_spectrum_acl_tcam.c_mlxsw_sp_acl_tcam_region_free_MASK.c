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
struct mlxsw_sp_acl_tcam_region {int /*<<< orphan*/  tcam_region_info; int /*<<< orphan*/  id; int /*<<< orphan*/  key_type; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PTAR_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_PTAR_OP_FREE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ptar ; 

__attribute__((used)) static void
FUNC3(struct mlxsw_sp *mlxsw_sp,
			      struct mlxsw_sp_acl_tcam_region *region)
{
	char ptar_pl[MLXSW_REG_PTAR_LEN];

	FUNC1(ptar_pl, MLXSW_REG_PTAR_OP_FREE,
			    region->key_type, 0, region->id,
			    region->tcam_region_info);
	FUNC2(mlxsw_sp->core, FUNC0(ptar), ptar_pl);
}