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
struct bna_ioceth {int /*<<< orphan*/  ioc; TYPE_1__* bna; } ;
typedef  enum bna_ioceth_event { ____Placeholder_bna_ioceth_event } bna_ioceth_event ;
struct TYPE_2__ {int /*<<< orphan*/  stats_mod; int /*<<< orphan*/  enet; } ;

/* Variables and functions */
#define  IOCETH_E_ENET_STOPPED 129 
#define  IOCETH_E_IOC_FAILED 128 
 int /*<<< orphan*/  FUNC0 (struct bna_ioceth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bna_ioceth_sm_ioc_disable_wait ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bna_ioceth*) ; 

__attribute__((used)) static void
FUNC6(struct bna_ioceth *ioceth,
				enum bna_ioceth_event event)
{
	switch (event) {
	case IOCETH_E_IOC_FAILED:
		FUNC0(ioceth, bna_ioceth_sm_ioc_disable_wait);
		FUNC5(ioceth);
		FUNC3(&ioceth->bna->enet);
		FUNC4(&ioceth->bna->stats_mod);
		FUNC1(&ioceth->ioc);
		break;

	case IOCETH_E_ENET_STOPPED:
		FUNC0(ioceth, bna_ioceth_sm_ioc_disable_wait);
		FUNC1(&ioceth->ioc);
		break;

	default:
		FUNC2(event);
	}
}