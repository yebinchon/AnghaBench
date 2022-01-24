#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct b43_phy {int do_full_init; int /*<<< orphan*/  channel; struct b43_phy_operations* ops; TYPE_4__* chandef; } ;
struct b43_wldev {TYPE_5__* wl; struct b43_phy phy; } ;
struct b43_phy_operations {int (* init ) (struct b43_wldev*) ;int /*<<< orphan*/  (* exit ) (struct b43_wldev*) ;int /*<<< orphan*/  (* switch_analog ) (struct b43_wldev*,int) ;} ;
struct TYPE_10__ {TYPE_2__* hw; } ;
struct TYPE_9__ {TYPE_3__* chan; } ;
struct TYPE_8__ {int /*<<< orphan*/  hw_value; } ;
struct TYPE_6__ {TYPE_4__ chandef; } ;
struct TYPE_7__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int) ; 
 int FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 

int FUNC6(struct b43_wldev *dev)
{
	struct b43_phy *phy = &dev->phy;
	const struct b43_phy_operations *ops = phy->ops;
	int err;

	/* During PHY init we need to use some channel. On the first init this
	 * function is called *before* b43_op_config, so our pointer is NULL.
	 */
	if (!phy->chandef) {
		phy->chandef = &dev->wl->hw->conf.chandef;
		phy->channel = phy->chandef->chan->hw_value;
	}

	phy->ops->switch_analog(dev, true);
	FUNC0(dev, false);

	err = ops->init(dev);
	if (err) {
		FUNC2(dev->wl, "PHY init failed\n");
		goto err_block_rf;
	}
	phy->do_full_init = false;

	err = FUNC1(dev, phy->channel);
	if (err) {
		FUNC2(dev->wl, "PHY init: Channel switch to default failed\n");
		goto err_phy_exit;
	}

	return 0;

err_phy_exit:
	phy->do_full_init = true;
	if (ops->exit)
		ops->exit(dev);
err_block_rf:
	FUNC0(dev, true);

	return err;
}