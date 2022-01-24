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
struct mlx5_termtbl_handle {scalar_t__ ref_count; int /*<<< orphan*/  termtbl; int /*<<< orphan*/  rule; int /*<<< orphan*/  termtbl_hlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  termtbl_mutex; } ;
struct mlx5_eswitch {TYPE_1__ offloads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_termtbl_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct mlx5_eswitch *esw,
			 struct mlx5_termtbl_handle *tt)
{
	FUNC4(&esw->offloads.termtbl_mutex);
	if (--tt->ref_count == 0)
		FUNC0(&tt->termtbl_hlist);
	FUNC5(&esw->offloads.termtbl_mutex);

	if (!tt->ref_count) {
		FUNC2(tt->rule);
		FUNC3(tt->termtbl);
		FUNC1(tt);
	}
}