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
struct nfp_net {int reconfig_timer_active; int /*<<< orphan*/  reconfig_timer; int /*<<< orphan*/  reconfig_posted; } ;

/* Variables and functions */
 int HZ ; 
 int NFP_NET_POLL_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nfp_net *nn, u32 update)
{
	update |= nn->reconfig_posted;
	nn->reconfig_posted = 0;

	FUNC1(nn, update);

	nn->reconfig_timer_active = true;
	FUNC0(&nn->reconfig_timer, jiffies + NFP_NET_POLL_TIMEOUT * HZ);
}