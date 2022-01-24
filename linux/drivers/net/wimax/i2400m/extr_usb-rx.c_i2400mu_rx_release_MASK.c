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
struct task_struct {int dummy; } ;
struct i2400m {int /*<<< orphan*/  rx_lock; } ;
struct i2400mu {struct task_struct* rx_kthread; struct i2400m i2400m; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*) ; 
 struct device* FUNC1 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct i2400mu *i2400mu)
{
	unsigned long flags;
	struct i2400m *i2400m = &i2400mu->i2400m;
	struct device *dev = FUNC1(i2400m);
	struct task_struct *kthread;

	FUNC3(&i2400m->rx_lock, flags);
	kthread = i2400mu->rx_kthread;
	i2400mu->rx_kthread = NULL;
	FUNC4(&i2400m->rx_lock, flags);
	if (kthread)
		FUNC2(kthread);
	else
		FUNC0(1, dev, "RX: kthread had already exited\n");
}