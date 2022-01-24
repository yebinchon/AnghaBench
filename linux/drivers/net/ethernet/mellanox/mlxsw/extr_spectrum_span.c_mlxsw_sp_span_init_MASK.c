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
struct mlxsw_sp_span_entry {int id; int /*<<< orphan*/  bound_ports_list; } ;
struct TYPE_2__ {int entries_count; struct mlxsw_sp_span_entry* entries; } ;
struct mlxsw_sp {TYPE_1__ span; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_SPAN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_span_entry* FUNC3 (int,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct mlxsw_sp *mlxsw_sp)
{
	int i;

	if (!FUNC2(mlxsw_sp->core, MAX_SPAN))
		return -EIO;

	mlxsw_sp->span.entries_count = FUNC1(mlxsw_sp->core,
							  MAX_SPAN);
	mlxsw_sp->span.entries = FUNC3(mlxsw_sp->span.entries_count,
					 sizeof(struct mlxsw_sp_span_entry),
					 GFP_KERNEL);
	if (!mlxsw_sp->span.entries)
		return -ENOMEM;

	for (i = 0; i < mlxsw_sp->span.entries_count; i++) {
		struct mlxsw_sp_span_entry *curr = &mlxsw_sp->span.entries[i];

		FUNC0(&curr->bound_ports_list);
		curr->id = i;
	}

	return 0;
}