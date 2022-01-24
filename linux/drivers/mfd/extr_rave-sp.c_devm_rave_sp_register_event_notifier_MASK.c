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
struct rave_sp {int /*<<< orphan*/  event_notifier_list; } ;
struct notifier_block {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 struct rave_sp* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct notifier_block**) ; 
 struct notifier_block** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct notifier_block**) ; 
 int /*<<< orphan*/  rave_sp_unregister_event_notifier ; 

int FUNC5(struct device *dev,
					 struct notifier_block *nb)
{
	struct rave_sp *sp = FUNC1(dev->parent);
	struct notifier_block **rcnb;
	int ret;

	rcnb = FUNC3(rave_sp_unregister_event_notifier,
			    sizeof(*rcnb), GFP_KERNEL);
	if (!rcnb)
		return -ENOMEM;

	ret = FUNC0(&sp->event_notifier_list, nb);
	if (!ret) {
		*rcnb = nb;
		FUNC2(dev, rcnb);
	} else {
		FUNC4(rcnb);
	}

	return ret;
}