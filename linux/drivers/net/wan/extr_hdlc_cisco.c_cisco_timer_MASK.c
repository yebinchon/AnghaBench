#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_3__ {int timeout; int interval; } ;
struct cisco_state {TYPE_2__ timer; TYPE_1__ settings; int /*<<< orphan*/  lock; int /*<<< orphan*/  rxseq; int /*<<< orphan*/  txseq; scalar_t__ up; scalar_t__ last_poll; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISCO_KEEPALIVE_REQ ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cisco_state* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cisco_state* st ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct cisco_state *st = FUNC2(st, t, timer);
	struct net_device *dev = st->dev;

	FUNC6(&st->lock);
	if (st->up &&
	    FUNC8(jiffies, st->last_poll + st->settings.timeout * HZ)) {
		st->up = 0;
		FUNC4(dev, "Link down\n");
		FUNC5(dev);
	}

	FUNC1(dev, CISCO_KEEPALIVE_REQ, FUNC3(++st->txseq),
			     FUNC3(st->rxseq));
	FUNC7(&st->lock);

	st->timer.expires = jiffies + st->settings.interval * HZ;
	FUNC0(&st->timer);
}