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
struct seq_file {struct brcms_pub* private; } ;
struct macstat {int /*<<< orphan*/  bphy_badplcp; int /*<<< orphan*/  phywatchdog; int /*<<< orphan*/  bphy_rxcrsglitch; int /*<<< orphan*/  txburst; int /*<<< orphan*/  txglitch_nack; int /*<<< orphan*/  txnack; int /*<<< orphan*/  frmscons; int /*<<< orphan*/  rxnack; int /*<<< orphan*/  prs_timeout; int /*<<< orphan*/  txcgprssuc; int /*<<< orphan*/  txcgprsfail; int /*<<< orphan*/  rxcgprsqovfl; int /*<<< orphan*/  rxcgprqfrm; int /*<<< orphan*/  pmqovfl; int /*<<< orphan*/  txsfovfl; int /*<<< orphan*/  rxf2ovfl; int /*<<< orphan*/  rxf1ovfl; int /*<<< orphan*/  rxf0ovfl; int /*<<< orphan*/  bcntxcancl; int /*<<< orphan*/  rxrsptmout; int /*<<< orphan*/  rxbeaconobss; int /*<<< orphan*/  rxdfrmucastobss; int /*<<< orphan*/  rxbeaconmbss; int /*<<< orphan*/  rxcfrmmcast; int /*<<< orphan*/  rxmfrmmcast; int /*<<< orphan*/  rxdfrmmcast; int /*<<< orphan*/  rxctsocast; int /*<<< orphan*/  rxrtsocast; int /*<<< orphan*/  rxcfrmocast; int /*<<< orphan*/  rxmfrmocast; int /*<<< orphan*/  rxdfrmocast; int /*<<< orphan*/  rxackucast; int /*<<< orphan*/  rxctsucast; int /*<<< orphan*/  rxrtsucast; int /*<<< orphan*/  rxcfrmucast; int /*<<< orphan*/  rxmfrmucastmbss; int /*<<< orphan*/  rxdfrmucastmbss; int /*<<< orphan*/  rxstrt; int /*<<< orphan*/  rxcrsglitch; int /*<<< orphan*/  rxbadplcp; int /*<<< orphan*/  rxbadfcs; int /*<<< orphan*/  rxinvmachdr; int /*<<< orphan*/  rxfrmtooshrt; int /*<<< orphan*/  rxfrmtoolong; int /*<<< orphan*/  pktengrxdmcast; int /*<<< orphan*/  pktengrxducast; int /*<<< orphan*/  txphyerr; int /*<<< orphan*/  txtplunfl; int /*<<< orphan*/ * txfunfl; int /*<<< orphan*/  txbcnfrm; int /*<<< orphan*/  txdnlfrm; int /*<<< orphan*/  txackfrm; int /*<<< orphan*/  txctsfrm; int /*<<< orphan*/  txrtsfrm; int /*<<< orphan*/  txallfrm; } ;
struct brcms_pub {TYPE_3__* wlc; TYPE_1__* ieee_hw; } ;
struct brcms_info {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {TYPE_2__* core; } ;
struct TYPE_5__ {struct macstat* macstat_snapshot; } ;
struct TYPE_4__ {struct brcms_info* priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *data)
{
	struct brcms_pub *drvr = s->private;
	struct brcms_info *wl = drvr->ieee_hw->priv;
	struct macstat stats;
	int i;

	FUNC2(&wl->lock);
	stats = *(drvr->wlc->core->macstat_snapshot);
	FUNC3(&wl->lock);

	FUNC1(s, "txallfrm: %d\n", stats.txallfrm);
	FUNC1(s, "txrtsfrm: %d\n", stats.txrtsfrm);
	FUNC1(s, "txctsfrm: %d\n", stats.txctsfrm);
	FUNC1(s, "txackfrm: %d\n", stats.txackfrm);
	FUNC1(s, "txdnlfrm: %d\n", stats.txdnlfrm);
	FUNC1(s, "txbcnfrm: %d\n", stats.txbcnfrm);
	FUNC1(s, "txfunfl[8]:");
	for (i = 0; i < FUNC0(stats.txfunfl); i++)
		FUNC1(s, " %d", stats.txfunfl[i]);
	FUNC1(s, "\ntxtplunfl: %d\n", stats.txtplunfl);
	FUNC1(s, "txphyerr: %d\n", stats.txphyerr);
	FUNC1(s, "pktengrxducast: %d\n", stats.pktengrxducast);
	FUNC1(s, "pktengrxdmcast: %d\n", stats.pktengrxdmcast);
	FUNC1(s, "rxfrmtoolong: %d\n", stats.rxfrmtoolong);
	FUNC1(s, "rxfrmtooshrt: %d\n", stats.rxfrmtooshrt);
	FUNC1(s, "rxinvmachdr: %d\n", stats.rxinvmachdr);
	FUNC1(s, "rxbadfcs: %d\n", stats.rxbadfcs);
	FUNC1(s, "rxbadplcp: %d\n", stats.rxbadplcp);
	FUNC1(s, "rxcrsglitch: %d\n", stats.rxcrsglitch);
	FUNC1(s, "rxstrt: %d\n", stats.rxstrt);
	FUNC1(s, "rxdfrmucastmbss: %d\n", stats.rxdfrmucastmbss);
	FUNC1(s, "rxmfrmucastmbss: %d\n", stats.rxmfrmucastmbss);
	FUNC1(s, "rxcfrmucast: %d\n", stats.rxcfrmucast);
	FUNC1(s, "rxrtsucast: %d\n", stats.rxrtsucast);
	FUNC1(s, "rxctsucast: %d\n", stats.rxctsucast);
	FUNC1(s, "rxackucast: %d\n", stats.rxackucast);
	FUNC1(s, "rxdfrmocast: %d\n", stats.rxdfrmocast);
	FUNC1(s, "rxmfrmocast: %d\n", stats.rxmfrmocast);
	FUNC1(s, "rxcfrmocast: %d\n", stats.rxcfrmocast);
	FUNC1(s, "rxrtsocast: %d\n", stats.rxrtsocast);
	FUNC1(s, "rxctsocast: %d\n", stats.rxctsocast);
	FUNC1(s, "rxdfrmmcast: %d\n", stats.rxdfrmmcast);
	FUNC1(s, "rxmfrmmcast: %d\n", stats.rxmfrmmcast);
	FUNC1(s, "rxcfrmmcast: %d\n", stats.rxcfrmmcast);
	FUNC1(s, "rxbeaconmbss: %d\n", stats.rxbeaconmbss);
	FUNC1(s, "rxdfrmucastobss: %d\n", stats.rxdfrmucastobss);
	FUNC1(s, "rxbeaconobss: %d\n", stats.rxbeaconobss);
	FUNC1(s, "rxrsptmout: %d\n", stats.rxrsptmout);
	FUNC1(s, "bcntxcancl: %d\n", stats.bcntxcancl);
	FUNC1(s, "rxf0ovfl: %d\n", stats.rxf0ovfl);
	FUNC1(s, "rxf1ovfl: %d\n", stats.rxf1ovfl);
	FUNC1(s, "rxf2ovfl: %d\n", stats.rxf2ovfl);
	FUNC1(s, "txsfovfl: %d\n", stats.txsfovfl);
	FUNC1(s, "pmqovfl: %d\n", stats.pmqovfl);
	FUNC1(s, "rxcgprqfrm: %d\n", stats.rxcgprqfrm);
	FUNC1(s, "rxcgprsqovfl: %d\n", stats.rxcgprsqovfl);
	FUNC1(s, "txcgprsfail: %d\n", stats.txcgprsfail);
	FUNC1(s, "txcgprssuc: %d\n", stats.txcgprssuc);
	FUNC1(s, "prs_timeout: %d\n", stats.prs_timeout);
	FUNC1(s, "rxnack: %d\n", stats.rxnack);
	FUNC1(s, "frmscons: %d\n", stats.frmscons);
	FUNC1(s, "txnack: %d\n", stats.txnack);
	FUNC1(s, "txglitch_nack: %d\n", stats.txglitch_nack);
	FUNC1(s, "txburst: %d\n", stats.txburst);
	FUNC1(s, "bphy_rxcrsglitch: %d\n", stats.bphy_rxcrsglitch);
	FUNC1(s, "phywatchdog: %d\n", stats.phywatchdog);
	FUNC1(s, "bphy_badplcp: %d\n", stats.bphy_badplcp);
	return 0;
}