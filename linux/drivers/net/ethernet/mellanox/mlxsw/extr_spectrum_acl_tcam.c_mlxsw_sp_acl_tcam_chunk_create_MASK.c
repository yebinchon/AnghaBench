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
struct mlxsw_sp_acl_tcam_vchunk {int /*<<< orphan*/  priority; } ;
struct mlxsw_sp_acl_tcam_region {int /*<<< orphan*/  priv; } ;
struct mlxsw_sp_acl_tcam_ops {int /*<<< orphan*/  (* chunk_init ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ chunk_priv_size; } ;
struct mlxsw_sp_acl_tcam_chunk {int /*<<< orphan*/  priv; struct mlxsw_sp_acl_tcam_region* region; struct mlxsw_sp_acl_tcam_vchunk* vchunk; } ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlxsw_sp_acl_tcam_chunk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mlxsw_sp_acl_tcam_chunk* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_sp_acl_tcam_chunk *
FUNC3(struct mlxsw_sp *mlxsw_sp,
			       struct mlxsw_sp_acl_tcam_vchunk *vchunk,
			       struct mlxsw_sp_acl_tcam_region *region)
{
	const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
	struct mlxsw_sp_acl_tcam_chunk *chunk;

	chunk = FUNC1(sizeof(*chunk) + ops->chunk_priv_size, GFP_KERNEL);
	if (!chunk)
		return FUNC0(-ENOMEM);
	chunk->vchunk = vchunk;
	chunk->region = region;

	ops->chunk_init(region->priv, chunk->priv, vchunk->priority);
	return chunk;
}