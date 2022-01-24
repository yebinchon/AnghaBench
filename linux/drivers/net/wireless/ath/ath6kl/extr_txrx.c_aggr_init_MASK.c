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
struct ath6kl_vif {int dummy; } ;
struct aggr_info_conn {int dummy; } ;
struct aggr_info {int /*<<< orphan*/  rx_amsdu_freeq; void* aggr_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGGR_NUM_OF_FREE_NETBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ath6kl_vif*,struct aggr_info*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct aggr_info*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct aggr_info *FUNC6(struct ath6kl_vif *vif)
{
	struct aggr_info *p_aggr = NULL;

	p_aggr = FUNC4(sizeof(struct aggr_info), GFP_KERNEL);
	if (!p_aggr) {
		FUNC2("failed to alloc memory for aggr_node\n");
		return NULL;
	}

	p_aggr->aggr_conn = FUNC4(sizeof(struct aggr_info_conn), GFP_KERNEL);
	if (!p_aggr->aggr_conn) {
		FUNC2("failed to alloc memory for connection specific aggr info\n");
		FUNC3(p_aggr);
		return NULL;
	}

	FUNC0(vif, p_aggr, p_aggr->aggr_conn);

	FUNC5(&p_aggr->rx_amsdu_freeq);
	FUNC1(&p_aggr->rx_amsdu_freeq, AGGR_NUM_OF_FREE_NETBUFS);

	return p_aggr;
}