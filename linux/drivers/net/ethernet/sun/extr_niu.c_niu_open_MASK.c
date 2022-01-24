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
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 scalar_t__ LOOPBACK_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 struct niu* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct niu*) ; 
 int /*<<< orphan*/  FUNC6 (struct niu*) ; 
 int FUNC7 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct niu*) ; 
 int /*<<< orphan*/  FUNC9 (struct niu*) ; 
 int /*<<< orphan*/  FUNC10 (struct niu*) ; 
 int FUNC11 (struct niu*) ; 
 int FUNC12 (struct niu*) ; 
 int /*<<< orphan*/  FUNC13 (struct niu*) ; 
 int /*<<< orphan*/  niu_timer ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct net_device *dev)
{
	struct niu *np = FUNC1(dev);
	int err;

	FUNC2(dev);

	err = FUNC5(np);
	if (err)
		goto out_err;

	err = FUNC7(np, 0);
	if (err)
		goto out_free_channels;

	err = FUNC12(np);
	if (err)
		goto out_free_channels;

	FUNC8(np);

	FUNC14(&np->lock);

	err = FUNC11(np);
	if (!err) {
		FUNC16(&np->timer, niu_timer, 0);
		np->timer.expires = jiffies + HZ;

		err = FUNC7(np, 1);
		if (err)
			FUNC13(np);
	}

	FUNC15(&np->lock);

	if (err) {
		FUNC6(np);
		goto out_free_irq;
	}

	FUNC4(dev);

	if (np->link_config.loopback_mode != LOOPBACK_DISABLED)
		FUNC3(dev);

	FUNC0(&np->timer);

	return 0;

out_free_irq:
	FUNC10(np);

out_free_channels:
	FUNC9(np);

out_err:
	return err;
}