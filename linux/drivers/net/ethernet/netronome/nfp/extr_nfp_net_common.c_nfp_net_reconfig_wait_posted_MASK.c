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
struct nfp_net {int reconfig_sync_present; int /*<<< orphan*/  reconfig_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfp_net *nn)
{
	FUNC0(nn);

	FUNC1(&nn->reconfig_lock);
	nn->reconfig_sync_present = false;
	FUNC2(&nn->reconfig_lock);
}