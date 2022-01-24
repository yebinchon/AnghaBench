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
typedef  int /*<<< orphan*/  u32 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_afa_counter {int /*<<< orphan*/  counter_index; } ;
struct mlxsw_afa_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_afa_counter*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct mlxsw_afa_counter*) ; 
 int FUNC3 (struct mlxsw_afa_block*,int /*<<< orphan*/ ) ; 
 struct mlxsw_afa_counter* FUNC4 (struct mlxsw_afa_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_afa_block*,struct mlxsw_afa_counter*) ; 

int FUNC6(struct mlxsw_afa_block *block,
				   u32 *p_counter_index,
				   struct netlink_ext_ack *extack)
{
	struct mlxsw_afa_counter *counter;
	u32 counter_index;
	int err;

	counter = FUNC4(block);
	if (FUNC0(counter)) {
		FUNC1(extack, "Cannot create count action");
		return FUNC2(counter);
	}
	counter_index = counter->counter_index;

	err = FUNC3(block, counter_index);
	if (err) {
		FUNC1(extack, "Cannot append count action");
		goto err_append_allocated_counter;
	}
	if (p_counter_index)
		*p_counter_index = counter_index;
	return 0;

err_append_allocated_counter:
	FUNC5(block, counter);
	return err;
}