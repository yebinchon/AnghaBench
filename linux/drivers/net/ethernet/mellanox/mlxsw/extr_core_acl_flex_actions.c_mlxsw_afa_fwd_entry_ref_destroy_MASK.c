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
struct mlxsw_afa_fwd_entry_ref {int /*<<< orphan*/  fwd_entry; int /*<<< orphan*/  resource; } ;
struct mlxsw_afa_block {int /*<<< orphan*/  afa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_afa_fwd_entry_ref*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct mlxsw_afa_block *block,
				struct mlxsw_afa_fwd_entry_ref *fwd_entry_ref)
{
	FUNC2(&fwd_entry_ref->resource);
	FUNC1(block->afa, fwd_entry_ref->fwd_entry);
	FUNC0(fwd_entry_ref);
}