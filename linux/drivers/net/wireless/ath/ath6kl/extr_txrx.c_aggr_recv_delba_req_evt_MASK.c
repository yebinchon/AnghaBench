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
typedef  size_t u8 ;
struct rxtid {scalar_t__ aggr; } ;
struct ath6kl_vif {scalar_t__ nw_type; TYPE_1__* aggr_cntxt; int /*<<< orphan*/  ar; } ;
struct ath6kl_sta {struct aggr_info_conn* aggr_conn; } ;
struct aggr_info_conn {struct rxtid* rx_tid; } ;
struct TYPE_2__ {struct aggr_info_conn* aggr_conn; } ;

/* Variables and functions */
 scalar_t__ AP_NETWORK ; 
 size_t NUM_OF_TIDS ; 
 int /*<<< orphan*/  FUNC0 (struct aggr_info_conn*,size_t) ; 
 struct ath6kl_sta* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 

void FUNC4(struct ath6kl_vif *vif, u8 tid_mux)
{
	struct ath6kl_sta *sta;
	struct rxtid *rxtid;
	struct aggr_info_conn *aggr_conn = NULL;
	u8 tid, aid;

	if (vif->nw_type == AP_NETWORK) {
		aid = FUNC2(tid_mux);
		sta = FUNC1(vif->ar, aid);
		if (sta)
			aggr_conn = sta->aggr_conn;
	} else {
		aggr_conn = vif->aggr_cntxt->aggr_conn;
	}

	if (!aggr_conn)
		return;

	tid = FUNC3(tid_mux);
	if (tid >= NUM_OF_TIDS)
		return;

	rxtid = &aggr_conn->rx_tid[tid];

	if (rxtid->aggr)
		FUNC0(aggr_conn, tid);
}