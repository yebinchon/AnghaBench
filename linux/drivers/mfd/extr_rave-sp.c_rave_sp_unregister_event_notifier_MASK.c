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
struct blocking_notifier_head {int dummy; } ;
struct rave_sp {struct blocking_notifier_head event_notifier_list; } ;
struct notifier_block {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct blocking_notifier_head*,struct notifier_block*) ; 
 struct rave_sp* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, void *res)
{
	struct rave_sp *sp = FUNC2(dev->parent);
	struct notifier_block *nb = *(struct notifier_block **)res;
	struct blocking_notifier_head *bnh = &sp->event_notifier_list;

	FUNC0(FUNC1(bnh, nb));
}