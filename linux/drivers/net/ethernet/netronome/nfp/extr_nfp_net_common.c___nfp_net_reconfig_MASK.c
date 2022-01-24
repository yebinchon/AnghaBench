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
typedef  int /*<<< orphan*/  u32 ;
struct nfp_net {int reconfig_sync_present; int /*<<< orphan*/  reconfig_lock; scalar_t__ reconfig_posted; } ;

/* Variables and functions */
 int HZ ; 
 int NFP_NET_POLL_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*) ; 
 int FUNC3 (struct nfp_net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct nfp_net *nn, u32 update)
{
	int ret;

	FUNC2(nn);

	FUNC0(nn, update);
	ret = FUNC3(nn, jiffies + HZ * NFP_NET_POLL_TIMEOUT);

	FUNC4(&nn->reconfig_lock);

	if (nn->reconfig_posted)
		FUNC1(nn, 0);

	nn->reconfig_sync_present = false;

	FUNC5(&nn->reconfig_lock);

	return ret;
}