#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ loopback_mode; } ;
struct niu {TYPE_2__ timer; TYPE_1__ link_config; int /*<<< orphan*/  lock; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int ETH_DATA_LEN ; 
 scalar_t__ HZ ; 
 scalar_t__ LOOPBACK_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 struct niu* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct niu*) ; 
 int FUNC6 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct niu*) ; 
 int /*<<< orphan*/  FUNC8 (struct niu*) ; 
 int /*<<< orphan*/  FUNC9 (struct niu*,struct net_device*) ; 
 int FUNC10 (struct niu*) ; 
 int /*<<< orphan*/  FUNC11 (struct niu*) ; 
 int /*<<< orphan*/  niu_timer ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev, int new_mtu)
{
	struct niu *np = FUNC1(dev);
	int err, orig_jumbo, new_jumbo;

	orig_jumbo = (dev->mtu > ETH_DATA_LEN);
	new_jumbo = (new_mtu > ETH_DATA_LEN);

	dev->mtu = new_mtu;

	if (!FUNC3(dev) ||
	    (orig_jumbo == new_jumbo))
		return 0;

	FUNC9(np, dev);

	FUNC8(np);

	FUNC7(np);

	err = FUNC5(np);
	if (err)
		return err;

	FUNC12(&np->lock);

	err = FUNC10(np);
	if (!err) {
		FUNC14(&np->timer, niu_timer, 0);
		np->timer.expires = jiffies + HZ;

		err = FUNC6(np, 1);
		if (err)
			FUNC11(np);
	}

	FUNC13(&np->lock);

	if (!err) {
		FUNC4(dev);
		if (np->link_config.loopback_mode != LOOPBACK_DISABLED)
			FUNC2(dev);

		FUNC0(&np->timer);
	}

	return err;
}