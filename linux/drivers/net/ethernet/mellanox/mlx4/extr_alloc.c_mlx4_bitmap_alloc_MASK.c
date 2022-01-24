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
typedef  int u32 ;
struct mlx4_bitmap {int max; int last; int top; int reserved_top; int mask; int /*<<< orphan*/  lock; int /*<<< orphan*/  avail; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u32 FUNC5(struct mlx4_bitmap *bitmap)
{
	u32 obj;

	FUNC3(&bitmap->lock);

	obj = FUNC1(bitmap->table, bitmap->max, bitmap->last);
	if (obj >= bitmap->max) {
		bitmap->top = (bitmap->top + bitmap->max + bitmap->reserved_top)
				& bitmap->mask;
		obj = FUNC0(bitmap->table, bitmap->max);
	}

	if (obj < bitmap->max) {
		FUNC2(obj, bitmap->table);
		bitmap->last = (obj + 1);
		if (bitmap->last == bitmap->max)
			bitmap->last = 0;
		obj |= bitmap->top;
	} else
		obj = -1;

	if (obj != -1)
		--bitmap->avail;

	FUNC4(&bitmap->lock);

	return obj;
}