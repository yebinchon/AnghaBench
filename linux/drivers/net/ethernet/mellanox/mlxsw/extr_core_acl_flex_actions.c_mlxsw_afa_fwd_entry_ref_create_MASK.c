#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  destructor; } ;
struct mlxsw_afa_fwd_entry_ref {TYPE_1__ resource; struct mlxsw_afa_fwd_entry* fwd_entry; } ;
struct mlxsw_afa_fwd_entry {int dummy; } ;
struct mlxsw_afa_block {int /*<<< orphan*/  afa; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_afa_fwd_entry_ref* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mlxsw_afa_fwd_entry*) ; 
 int FUNC2 (struct mlxsw_afa_fwd_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_afa_fwd_entry_ref*) ; 
 struct mlxsw_afa_fwd_entry_ref* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct mlxsw_afa_fwd_entry* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_afa_fwd_entry_ref_destructor ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_afa_block*,TYPE_1__*) ; 

__attribute__((used)) static struct mlxsw_afa_fwd_entry_ref *
FUNC7(struct mlxsw_afa_block *block, u8 local_port)
{
	struct mlxsw_afa_fwd_entry_ref *fwd_entry_ref;
	struct mlxsw_afa_fwd_entry *fwd_entry;
	int err;

	fwd_entry_ref = FUNC4(sizeof(*fwd_entry_ref), GFP_KERNEL);
	if (!fwd_entry_ref)
		return FUNC0(-ENOMEM);
	fwd_entry = FUNC5(block->afa, local_port);
	if (FUNC1(fwd_entry)) {
		err = FUNC2(fwd_entry);
		goto err_fwd_entry_get;
	}
	fwd_entry_ref->fwd_entry = fwd_entry;
	fwd_entry_ref->resource.destructor = mlxsw_afa_fwd_entry_ref_destructor;
	FUNC6(block, &fwd_entry_ref->resource);
	return fwd_entry_ref;

err_fwd_entry_get:
	FUNC3(fwd_entry_ref);
	return FUNC0(err);
}