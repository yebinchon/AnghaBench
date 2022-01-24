#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct frad_state {struct net_device* dev; } ;
typedef  int /*<<< orphan*/  hdlc_device ;
struct TYPE_6__ {void* expires; } ;
struct TYPE_4__ {int t392; int n393; int n392; int t391; scalar_t__ dce; } ;
struct TYPE_5__ {int request; int last_errors; int reliable; scalar_t__ n391cnt; TYPE_3__ timer; TYPE_1__ settings; void* last_poll; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct net_device*) ; 
 struct frad_state* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,...) ; 
 struct frad_state* st ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (void*,void*) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct frad_state *st = FUNC4(st, t, timer);
	struct net_device *dev = st->dev;
	hdlc_device *hdlc = FUNC1(dev);
	int i, cnt = 0, reliable;
	u32 list;

	if (FUNC6(hdlc)->settings.dce) {
		reliable = FUNC6(hdlc)->request &&
			FUNC7(jiffies, FUNC6(hdlc)->last_poll +
				    FUNC6(hdlc)->settings.t392 * HZ);
		FUNC6(hdlc)->request = 0;
	} else {
		FUNC6(hdlc)->last_errors <<= 1; /* Shift the list */
		if (FUNC6(hdlc)->request) {
			if (FUNC6(hdlc)->reliable)
				FUNC5(dev, "No LMI status reply received\n");
			FUNC6(hdlc)->last_errors |= 1;
		}

		list = FUNC6(hdlc)->last_errors;
		for (i = 0; i < FUNC6(hdlc)->settings.n393; i++, list >>= 1)
			cnt += (list & 1);	/* errors count */

		reliable = (cnt < FUNC6(hdlc)->settings.n392);
	}

	if (FUNC6(hdlc)->reliable != reliable) {
		FUNC5(dev, "Link %sreliable\n", reliable ? "" : "un");
		FUNC3(reliable, dev);
	}

	if (FUNC6(hdlc)->settings.dce)
		FUNC6(hdlc)->timer.expires = jiffies +
			FUNC6(hdlc)->settings.t392 * HZ;
	else {
		if (FUNC6(hdlc)->n391cnt)
			FUNC6(hdlc)->n391cnt--;

		FUNC2(dev, FUNC6(hdlc)->n391cnt == 0);

		FUNC6(hdlc)->last_poll = jiffies;
		FUNC6(hdlc)->request = 1;
		FUNC6(hdlc)->timer.expires = jiffies +
			FUNC6(hdlc)->settings.t391 * HZ;
	}

	FUNC0(&FUNC6(hdlc)->timer);
}