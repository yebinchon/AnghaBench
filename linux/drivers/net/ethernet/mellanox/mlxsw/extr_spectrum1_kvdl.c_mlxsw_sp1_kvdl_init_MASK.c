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
struct mlxsw_sp1_kvdl {int dummy; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_LINEAR ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS ; 
 int /*<<< orphan*/  MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_sp1_kvdl*) ; 
 int /*<<< orphan*/  mlxsw_sp1_kvdl_chunks_occ_get ; 
 int /*<<< orphan*/  mlxsw_sp1_kvdl_large_chunks_occ_get ; 
 int /*<<< orphan*/  mlxsw_sp1_kvdl_occ_get ; 
 int FUNC1 (struct mlxsw_sp*,struct mlxsw_sp1_kvdl*) ; 
 int /*<<< orphan*/  mlxsw_sp1_kvdl_single_occ_get ; 
 struct devlink* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp *mlxsw_sp, void *priv)
{
	struct devlink *devlink = FUNC2(mlxsw_sp->core);
	struct mlxsw_sp1_kvdl *kvdl = priv;
	int err;

	err = FUNC1(mlxsw_sp, kvdl);
	if (err)
		return err;
	FUNC0(devlink,
					  MLXSW_SP_RESOURCE_KVD_LINEAR,
					  mlxsw_sp1_kvdl_occ_get,
					  kvdl);
	FUNC0(devlink,
					  MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE,
					  mlxsw_sp1_kvdl_single_occ_get,
					  kvdl);
	FUNC0(devlink,
					  MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS,
					  mlxsw_sp1_kvdl_chunks_occ_get,
					  kvdl);
	FUNC0(devlink,
					  MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS,
					  mlxsw_sp1_kvdl_large_chunks_occ_get,
					  kvdl);
	return 0;
}