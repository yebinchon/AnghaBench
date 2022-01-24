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
struct TYPE_2__ {scalar_t__ netdev; } ;
struct nfp_net {TYPE_1__ dp; scalar_t__ reconfig_posted; int /*<<< orphan*/  reconfig_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net*) ; 

void FUNC5(struct nfp_net *nn)
{
	FUNC0(FUNC3(&nn->reconfig_timer) || nn->reconfig_posted);
	FUNC2(nn);

	if (nn->dp.netdev)
		FUNC1(nn->dp.netdev);
	else
		FUNC4(nn);
}