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
struct mlxsw_afa_counter {int /*<<< orphan*/  counter_index; int /*<<< orphan*/  resource; } ;
struct mlxsw_afa_block {TYPE_2__* afa; } ;
struct TYPE_4__ {int /*<<< orphan*/  ops_priv; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* counter_index_put ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_afa_counter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct mlxsw_afa_block *block,
			  struct mlxsw_afa_counter *counter)
{
	FUNC1(&counter->resource);
	block->afa->ops->counter_index_put(block->afa->ops_priv,
					   counter->counter_index);
	FUNC0(counter);
}