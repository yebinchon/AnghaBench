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
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;
struct nfp_net {TYPE_1__ dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct nfp_net *nn)
{
	if (!nn->dp.netdev)
		return;

	FUNC2(nn->dp.netdev);
	FUNC0(nn);
	FUNC1(nn);
}