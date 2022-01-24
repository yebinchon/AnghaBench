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
struct i2400m {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_roq_refcount; scalar_t__ rx_reorder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2400m*) ; 
 int /*<<< orphan*/  i2400m_rx_roq_destroy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct i2400m *i2400m)
{
	unsigned long flags;

	if (i2400m->rx_reorder) {
		FUNC2(&i2400m->rx_lock, flags);
		FUNC1(&i2400m->rx_roq_refcount, i2400m_rx_roq_destroy);
		FUNC3(&i2400m->rx_lock, flags);
	}
	/* at this point, nothing can be received... */
	FUNC0(i2400m);
}