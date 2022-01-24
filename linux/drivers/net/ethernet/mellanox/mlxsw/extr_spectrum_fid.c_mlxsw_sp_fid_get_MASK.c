#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct mlxsw_sp_fid_family {int /*<<< orphan*/  fids_bitmap; scalar_t__ start_index; TYPE_2__* ops; int /*<<< orphan*/  fids_list; int /*<<< orphan*/  fid_size; } ;
struct mlxsw_sp_fid {struct mlxsw_sp_fid_family* fid_family; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  list; int /*<<< orphan*/  ht_node; scalar_t__ fid_index; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
typedef  enum mlxsw_sp_fid_type { ____Placeholder_mlxsw_sp_fid_type } mlxsw_sp_fid_type ;
struct TYPE_4__ {int (* index_alloc ) (struct mlxsw_sp_fid*,void const*,scalar_t__*) ;int (* configure ) (struct mlxsw_sp_fid*) ;int /*<<< orphan*/  (* deconfigure ) (struct mlxsw_sp_fid*) ;int /*<<< orphan*/  (* setup ) (struct mlxsw_sp_fid*,void const*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  fid_ht; struct mlxsw_sp_fid_family** fid_family_arr; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_fid* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_fid*) ; 
 struct mlxsw_sp_fid* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_sp_fid_ht_params ; 
 struct mlxsw_sp_fid* FUNC6 (struct mlxsw_sp*,int,void const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mlxsw_sp_fid*,void const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp_fid*,void const*) ; 
 int FUNC10 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp_fid*) ; 

__attribute__((used)) static struct mlxsw_sp_fid *FUNC12(struct mlxsw_sp *mlxsw_sp,
					     enum mlxsw_sp_fid_type type,
					     const void *arg)
{
	struct mlxsw_sp_fid_family *fid_family;
	struct mlxsw_sp_fid *fid;
	u16 fid_index;
	int err;

	fid = FUNC6(mlxsw_sp, type, arg);
	if (fid)
		return fid;

	fid_family = mlxsw_sp->fid_core->fid_family_arr[type];
	fid = FUNC4(fid_family->fid_size, GFP_KERNEL);
	if (!fid)
		return FUNC0(-ENOMEM);
	fid->fid_family = fid_family;

	err = fid->fid_family->ops->index_alloc(fid, arg, &fid_index);
	if (err)
		goto err_index_alloc;
	fid->fid_index = fid_index;
	FUNC2(fid_index - fid_family->start_index, fid_family->fids_bitmap);

	if (fid->fid_family->ops->setup)
		fid->fid_family->ops->setup(fid, arg);

	err = fid->fid_family->ops->configure(fid);
	if (err)
		goto err_configure;

	err = FUNC7(&mlxsw_sp->fid_core->fid_ht, &fid->ht_node,
				     mlxsw_sp_fid_ht_params);
	if (err)
		goto err_rhashtable_insert;

	FUNC5(&fid->list, &fid_family->fids_list);
	fid->ref_count++;
	return fid;

err_rhashtable_insert:
	fid->fid_family->ops->deconfigure(fid);
err_configure:
	FUNC1(fid_index - fid_family->start_index,
		    fid_family->fids_bitmap);
err_index_alloc:
	FUNC3(fid);
	return FUNC0(err);
}