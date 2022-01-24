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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct nfp_net {int reconfig_sync_present; int reconfig_timer_active; TYPE_1__ reconfig_timer; int /*<<< orphan*/  reconfig_lock; scalar_t__ reconfig_posted; } ;

/* Variables and functions */
 int HZ ; 
 int NFP_NET_POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nfp_net *nn)
{
	bool cancelled_timer = false;
	u32 pre_posted_requests;

	FUNC4(&nn->reconfig_lock);

	FUNC0(nn->reconfig_sync_present);
	nn->reconfig_sync_present = true;

	if (nn->reconfig_timer_active) {
		nn->reconfig_timer_active = false;
		cancelled_timer = true;
	}
	pre_posted_requests = nn->reconfig_posted;
	nn->reconfig_posted = 0;

	FUNC5(&nn->reconfig_lock);

	if (cancelled_timer) {
		FUNC1(&nn->reconfig_timer);
		FUNC3(nn, nn->reconfig_timer.expires);
	}

	/* Run the posted reconfigs which were issued before we started */
	if (pre_posted_requests) {
		FUNC2(nn, pre_posted_requests);
		FUNC3(nn, jiffies + HZ * NFP_NET_POLL_TIMEOUT);
	}
}