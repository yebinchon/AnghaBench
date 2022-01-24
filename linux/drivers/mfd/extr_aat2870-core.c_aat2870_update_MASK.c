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
typedef  int u8 ;
struct aat2870_data {int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int FUNC0 (struct aat2870_data*,int,int*) ; 
 int FUNC1 (struct aat2870_data*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct aat2870_data *aat2870, u8 addr, u8 mask,
			  u8 val)
{
	int change;
	u8 old_val, new_val;
	int ret;

	FUNC2(&aat2870->io_lock);

	ret = FUNC0(aat2870, addr, &old_val);
	if (ret)
		goto out_unlock;

	new_val = (old_val & ~mask) | (val & mask);
	change = old_val != new_val;
	if (change)
		ret = FUNC1(aat2870, addr, new_val);

out_unlock:
	FUNC3(&aat2870->io_lock);

	return ret;
}