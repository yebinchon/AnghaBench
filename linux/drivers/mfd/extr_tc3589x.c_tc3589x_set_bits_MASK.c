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
struct tc3589x {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tc3589x*,int) ; 
 int FUNC3 (struct tc3589x*,int,int) ; 

int FUNC4(struct tc3589x *tc3589x, u8 reg, u8 mask, u8 val)
{
	int ret;

	FUNC0(&tc3589x->lock);

	ret = FUNC2(tc3589x, reg);
	if (ret < 0)
		goto out;

	ret &= ~mask;
	ret |= val;

	ret = FUNC3(tc3589x, reg, ret);

out:
	FUNC1(&tc3589x->lock);
	return ret;
}