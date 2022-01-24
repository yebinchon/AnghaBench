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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct nsim_trap_item {scalar_t__ action; int /*<<< orphan*/  trap_ctx; } ;
struct nsim_trap_data {int /*<<< orphan*/  trap_lock; struct nsim_trap_item* trap_items_arr; } ;
struct nsim_dev_port {int /*<<< orphan*/  devlink_port; TYPE_1__* ns; } ;
struct nsim_dev {struct nsim_trap_data* trap_data; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; struct nsim_dev* nsim_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DEVLINK_TRAP_ACTION_DROP ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct sk_buff* FUNC5 () ; 
 int /*<<< orphan*/  nsim_traps_arr ; 
 struct devlink* FUNC6 (struct nsim_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct nsim_dev_port *nsim_dev_port)
{
	struct nsim_dev *nsim_dev = nsim_dev_port->ns->nsim_dev;
	struct devlink *devlink = FUNC6(nsim_dev);
	struct nsim_trap_data *nsim_trap_data;
	int i;

	nsim_trap_data = nsim_dev->trap_data;

	FUNC7(&nsim_trap_data->trap_lock);
	for (i = 0; i < FUNC0(nsim_traps_arr); i++) {
		struct nsim_trap_item *nsim_trap_item;
		struct sk_buff *skb;

		nsim_trap_item = &nsim_trap_data->trap_items_arr[i];
		if (nsim_trap_item->action == DEVLINK_TRAP_ACTION_DROP)
			continue;

		skb = FUNC5();
		if (!skb)
			continue;
		skb->dev = nsim_dev_port->ns->netdev;

		/* Trapped packets are usually passed to devlink in softIRQ,
		 * but in this case they are generated in a workqueue. Disable
		 * softIRQs to prevent lockdep from complaining about
		 * "incosistent lock state".
		 */
		FUNC3();
		FUNC2(devlink, skb, nsim_trap_item->trap_ctx,
				    &nsim_dev_port->devlink_port);
		FUNC4();
		FUNC1(skb);
	}
	FUNC8(&nsim_trap_data->trap_lock);
}