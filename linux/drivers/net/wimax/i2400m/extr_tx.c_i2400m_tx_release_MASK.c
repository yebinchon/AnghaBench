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
struct i2400m {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/ * tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct i2400m *i2400m)
{
	unsigned long flags;
	FUNC1(&i2400m->tx_lock, flags);
	FUNC0(i2400m->tx_buf);
	i2400m->tx_buf = NULL;
	FUNC2(&i2400m->tx_lock, flags);
}