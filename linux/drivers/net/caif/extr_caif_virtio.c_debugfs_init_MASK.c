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
struct TYPE_2__ {int /*<<< orphan*/  tx_flow_on; int /*<<< orphan*/  tx_kicks; int /*<<< orphan*/  tx_no_mem; int /*<<< orphan*/  tx_full_ring; int /*<<< orphan*/  rx_kicks; int /*<<< orphan*/  rx_nomem; int /*<<< orphan*/  rx_napi_resched; int /*<<< orphan*/  rx_napi_complete; } ;
struct cfv_info {TYPE_1__ stats; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct cfv_info *cfv)
{
	cfv->debugfs = FUNC0(FUNC2(cfv->ndev), NULL);

	FUNC1("rx-napi-complete", 0400, cfv->debugfs,
			   &cfv->stats.rx_napi_complete);
	FUNC1("rx-napi-resched", 0400, cfv->debugfs,
			   &cfv->stats.rx_napi_resched);
	FUNC1("rx-nomem", 0400, cfv->debugfs,
			   &cfv->stats.rx_nomem);
	FUNC1("rx-kicks", 0400, cfv->debugfs,
			   &cfv->stats.rx_kicks);
	FUNC1("tx-full-ring", 0400, cfv->debugfs,
			   &cfv->stats.tx_full_ring);
	FUNC1("tx-no-mem", 0400, cfv->debugfs,
			   &cfv->stats.tx_no_mem);
	FUNC1("tx-kicks", 0400, cfv->debugfs,
			   &cfv->stats.tx_kicks);
	FUNC1("tx-flow-on", 0400, cfv->debugfs,
			   &cfv->stats.tx_flow_on);
}