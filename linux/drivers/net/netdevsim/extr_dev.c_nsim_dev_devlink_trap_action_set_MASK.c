#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nsim_trap_item {int action; } ;
struct nsim_dev {TYPE_1__* trap_data; } ;
struct devlink_trap {int /*<<< orphan*/  id; } ;
struct devlink {int dummy; } ;
typedef  enum devlink_trap_action { ____Placeholder_devlink_trap_action } devlink_trap_action ;
struct TYPE_2__ {int /*<<< orphan*/  trap_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int) ; 
 struct nsim_dev* FUNC1 (struct devlink*) ; 
 struct nsim_trap_item* FUNC2 (struct nsim_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct devlink *devlink,
				 const struct devlink_trap *trap,
				 enum devlink_trap_action action)
{
	struct nsim_dev *nsim_dev = FUNC1(devlink);
	struct nsim_trap_item *nsim_trap_item;

	nsim_trap_item = FUNC2(nsim_dev, trap->id);
	if (FUNC0(!nsim_trap_item))
		return -ENOENT;

	FUNC3(&nsim_dev->trap_data->trap_lock);
	nsim_trap_item->action = action;
	FUNC4(&nsim_dev->trap_data->trap_lock);

	return 0;
}