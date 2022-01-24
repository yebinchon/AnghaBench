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
struct timer_list {int dummy; } ;
struct nfp_net {int reconfig_timer_active; int /*<<< orphan*/  reconfig_lock; scalar_t__ reconfig_posted; scalar_t__ reconfig_sync_present; } ;

/* Variables and functions */
 struct nfp_net* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 struct nfp_net* nn ; 
 int /*<<< orphan*/  reconfig_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct nfp_net *nn = FUNC0(nn, t, reconfig_timer);

	FUNC3(&nn->reconfig_lock);

	nn->reconfig_timer_active = false;

	/* If sync caller is present it will take over from us */
	if (nn->reconfig_sync_present)
		goto done;

	/* Read reconfig status and report errors */
	FUNC1(nn, true);

	if (nn->reconfig_posted)
		FUNC2(nn, 0);
done:
	FUNC4(&nn->reconfig_lock);
}