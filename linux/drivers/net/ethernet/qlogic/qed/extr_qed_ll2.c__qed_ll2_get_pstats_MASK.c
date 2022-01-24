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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_ll2_stats {int /*<<< orphan*/  sent_bcast_pkts; int /*<<< orphan*/  sent_mcast_pkts; int /*<<< orphan*/  sent_ucast_pkts; int /*<<< orphan*/  sent_bcast_bytes; int /*<<< orphan*/  sent_mcast_bytes; int /*<<< orphan*/  sent_ucast_bytes; } ;
struct qed_ll2_info {int /*<<< orphan*/  tx_stats_id; } ;
struct qed_hwfn {int dummy; } ;
struct core_ll2_pstorm_per_queue_stat {int /*<<< orphan*/  sent_bcast_pkts; int /*<<< orphan*/  sent_mcast_pkts; int /*<<< orphan*/  sent_ucast_pkts; int /*<<< orphan*/  sent_bcast_bytes; int /*<<< orphan*/  sent_mcast_bytes; int /*<<< orphan*/  sent_ucast_bytes; } ;
typedef  int /*<<< orphan*/  pstats ;

/* Variables and functions */
 scalar_t__ BAR0_MAP_REG_PSDM_RAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct core_ll2_pstorm_per_queue_stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,struct core_ll2_pstorm_per_queue_stat*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct qed_hwfn *p_hwfn,
				struct qed_ptt *p_ptt,
				struct qed_ll2_info *p_ll2_conn,
				struct qed_ll2_stats *p_stats)
{
	struct core_ll2_pstorm_per_queue_stat pstats;
	u8 stats_id = p_ll2_conn->tx_stats_id;
	u32 pstats_addr;

	FUNC2(&pstats, 0, sizeof(pstats));
	pstats_addr = BAR0_MAP_REG_PSDM_RAM +
		      FUNC0(stats_id);
	FUNC3(p_hwfn, p_ptt, &pstats, pstats_addr, sizeof(pstats));

	p_stats->sent_ucast_bytes += FUNC1(pstats.sent_ucast_bytes);
	p_stats->sent_mcast_bytes += FUNC1(pstats.sent_mcast_bytes);
	p_stats->sent_bcast_bytes += FUNC1(pstats.sent_bcast_bytes);
	p_stats->sent_ucast_pkts += FUNC1(pstats.sent_ucast_pkts);
	p_stats->sent_mcast_pkts += FUNC1(pstats.sent_mcast_pkts);
	p_stats->sent_bcast_pkts += FUNC1(pstats.sent_bcast_pkts);
}