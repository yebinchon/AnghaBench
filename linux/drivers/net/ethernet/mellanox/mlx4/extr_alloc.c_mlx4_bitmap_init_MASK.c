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
typedef  scalar_t__ u32 ;
struct mlx4_bitmap {int /*<<< orphan*/  table; scalar_t__ max; int /*<<< orphan*/  lock; scalar_t__ avail; scalar_t__ effective_len; scalar_t__ reserved_top; scalar_t__ mask; scalar_t__ top; scalar_t__ last; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mlx4_bitmap *bitmap, u32 num, u32 mask,
		     u32 reserved_bot, u32 reserved_top)
{
	/* num must be a power of 2 */
	if (num != FUNC2(num))
		return -EINVAL;

	bitmap->last = 0;
	bitmap->top  = 0;
	bitmap->max  = num - reserved_top;
	bitmap->mask = mask;
	bitmap->reserved_top = reserved_top;
	bitmap->avail = num - reserved_top - reserved_bot;
	bitmap->effective_len = bitmap->avail;
	FUNC3(&bitmap->lock);
	bitmap->table = FUNC1(bitmap->max, GFP_KERNEL);
	if (!bitmap->table)
		return -ENOMEM;

	FUNC0(bitmap->table, 0, reserved_bot);

	return 0;
}