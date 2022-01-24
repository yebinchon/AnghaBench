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
struct ipvl_pcpu_stats {unsigned int rx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_mcast; int /*<<< orphan*/  rx_pkts; } ;
struct ipvl_dev {TYPE_1__* pcpu_stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_errs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ipvl_pcpu_stats* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(const struct ipvl_dev *ipvlan,
			    unsigned int len, bool success, bool mcast)
{
	if (FUNC0(success)) {
		struct ipvl_pcpu_stats *pcptr;

		pcptr = FUNC2(ipvlan->pcpu_stats);
		FUNC3(&pcptr->syncp);
		pcptr->rx_pkts++;
		pcptr->rx_bytes += len;
		if (mcast)
			pcptr->rx_mcast++;
		FUNC4(&pcptr->syncp);
	} else {
		FUNC1(ipvlan->pcpu_stats->rx_errs);
	}
}