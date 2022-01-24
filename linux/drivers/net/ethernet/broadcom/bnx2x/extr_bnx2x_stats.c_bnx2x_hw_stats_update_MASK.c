#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct nig_stats {scalar_t__ brb_truncate; scalar_t__ brb_discard; } ;
struct mac_stx {int dummy; } ;
struct host_port_stats {int /*<<< orphan*/  host_port_stats_counter; int /*<<< orphan*/  brb_drop_lo; int /*<<< orphan*/  brb_drop_hi; struct nig_stats* mac_stx; } ;
struct bnx2x_eth_stats {scalar_t__ nig_timer_max; int /*<<< orphan*/  eee_tx_lpi; int /*<<< orphan*/  brb_drop_lo; int /*<<< orphan*/  brb_drop_hi; struct nig_stats rx_stat_ifhcinbadoctets_hi; int /*<<< orphan*/  brb_truncate_lo; int /*<<< orphan*/  brb_truncate_hi; } ;
struct TYPE_5__ {int mac_type; } ;
struct TYPE_4__ {struct nig_stats old_nig_stats; } ;
struct bnx2x {TYPE_2__ link_vars; struct bnx2x_eth_stats eth_stats; TYPE_1__ port; } ;
struct TYPE_6__ {int /*<<< orphan*/  stat_nig_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  BNX2X_MSG_STATS ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 size_t FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
#define  MAC_TYPE_BMAC 132 
#define  MAC_TYPE_EMAC 131 
#define  MAC_TYPE_NONE 130 
#define  MAC_TYPE_UMAC 129 
#define  MAC_TYPE_XMAC 128 
 scalar_t__ MISC_REG_CPMU_LP_SM_ENT_CNT_P0 ; 
 scalar_t__ MISC_REG_CPMU_LP_SM_ENT_CNT_P1 ; 
 scalar_t__ FUNC6 (struct bnx2x*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*) ; 
 void* FUNC12 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  egress_mac_pkt0 ; 
 int /*<<< orphan*/  egress_mac_pkt1 ; 
 int /*<<< orphan*/  etherstatspkts1024octetsto1522octets ; 
 int /*<<< orphan*/  etherstatspktsover1522octets ; 
 int /*<<< orphan*/  FUNC13 (struct nig_stats*,struct nig_stats*,int) ; 
 int /*<<< orphan*/  nig_stats ; 
 TYPE_3__* port_mb ; 
 int /*<<< orphan*/  port_stats ; 

__attribute__((used)) static int FUNC14(struct bnx2x *bp)
{
	struct nig_stats *new = FUNC12(bp, nig_stats);
	struct nig_stats *old = &(bp->port.old_nig_stats);
	struct host_port_stats *pstats = FUNC12(bp, port_stats);
	struct bnx2x_eth_stats *estats = &bp->eth_stats;
	struct {
		u32 lo;
		u32 hi;
	} diff;

	switch (bp->link_vars.mac_type) {
	case MAC_TYPE_BMAC:
		FUNC9(bp);
		break;

	case MAC_TYPE_EMAC:
		FUNC10(bp);
		break;

	case MAC_TYPE_UMAC:
	case MAC_TYPE_XMAC:
		FUNC11(bp);
		break;

	case MAC_TYPE_NONE: /* unreached */
		FUNC5(BNX2X_MSG_STATS,
		   "stats updated by DMAE but no MAC active\n");
		return -1;

	default: /* unreached */
		FUNC1("Unknown MAC type\n");
	}

	FUNC0(pstats->brb_drop_hi, pstats->brb_drop_lo,
		      new->brb_discard - old->brb_discard);
	FUNC0(estats->brb_truncate_hi, estats->brb_truncate_lo,
		      new->brb_truncate - old->brb_truncate);

	if (!FUNC4(bp)) {
		FUNC8(egress_mac_pkt0,
					etherstatspkts1024octetsto1522octets);
		FUNC8(egress_mac_pkt1,
					etherstatspktsover1522octets);
	}

	FUNC13(old, new, sizeof(struct nig_stats));

	FUNC13(&(estats->rx_stat_ifhcinbadoctets_hi), &(pstats->mac_stx[1]),
	       sizeof(struct mac_stx));
	estats->brb_drop_hi = pstats->brb_drop_hi;
	estats->brb_drop_lo = pstats->brb_drop_lo;

	pstats->host_port_stats_counter++;

	if (FUNC4(bp)) {
		u32 lpi_reg = FUNC3(bp) ? MISC_REG_CPMU_LP_SM_ENT_CNT_P1
					  : MISC_REG_CPMU_LP_SM_ENT_CNT_P0;
		estats->eee_tx_lpi += FUNC6(bp, lpi_reg);
	}

	if (!FUNC2(bp)) {
		u32 nig_timer_max =
			FUNC7(bp, port_mb[FUNC3(bp)].stat_nig_timer);
		if (nig_timer_max != estats->nig_timer_max) {
			estats->nig_timer_max = nig_timer_max;
			FUNC1("NIG timer max (%u)\n",
				  estats->nig_timer_max);
		}
	}

	return 0;
}