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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;
struct brcmf_if {TYPE_2__* ndev; int /*<<< orphan*/  pend_8021x_wait; int /*<<< orphan*/  pend_8021x_cnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ ETH_P_PAE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct brcmf_if *ifp, struct sk_buff *txp, bool success)
{
	struct ethhdr *eh;
	u16 type;

	eh = (struct ethhdr *)(txp->data);
	type = FUNC2(eh->h_proto);

	if (type == ETH_P_PAE) {
		FUNC0(&ifp->pend_8021x_cnt);
		if (FUNC3(&ifp->pend_8021x_wait))
			FUNC4(&ifp->pend_8021x_wait);
	}

	if (!success)
		ifp->ndev->stats.tx_errors++;

	FUNC1(txp);
}