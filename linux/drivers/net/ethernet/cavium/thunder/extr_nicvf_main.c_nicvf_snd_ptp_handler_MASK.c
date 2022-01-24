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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  ts ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct nicvf {int /*<<< orphan*/ * ptp_skb; int /*<<< orphan*/  ptp_clock; int /*<<< orphan*/  tx_ptp_skbs; struct nicvf* pnicvf; } ;
struct net_device {int dummy; } ;
struct cqe_send_t {scalar_t__ send_status; int /*<<< orphan*/  ptp_timestamp; } ;

/* Variables and functions */
 scalar_t__ CQ_TX_ERROP_TSTMP_CONFLICT ; 
 scalar_t__ CQ_TX_ERROP_TSTMP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 struct nicvf* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct skb_shared_hwtstamps*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct net_device *netdev,
				  struct cqe_send_t *cqe_tx)
{
	struct nicvf *nic = FUNC4(netdev);
	struct skb_shared_hwtstamps ts;
	u64 ns;

	nic = nic->pnicvf;

	/* Sync for 'ptp_skb' */
	FUNC7();

	/* New timestamp request can be queued now */
	FUNC0(&nic->tx_ptp_skbs, 0);

	/* Check for timestamp requested skb */
	if (!nic->ptp_skb)
		return;

	/* Check if timestamping is timedout, which is set to 10us */
	if (cqe_tx->send_status == CQ_TX_ERROP_TSTMP_TIMEOUT ||
	    cqe_tx->send_status == CQ_TX_ERROP_TSTMP_CONFLICT)
		goto no_tstamp;

	/* Get the timestamp */
	FUNC3(&ts, 0, sizeof(ts));
	ns = FUNC1(nic->ptp_clock, cqe_tx->ptp_timestamp);
	ts.hwtstamp = FUNC5(ns);
	FUNC6(nic->ptp_skb, &ts);

no_tstamp:
	/* Free the original skb */
	FUNC2(nic->ptp_skb);
	nic->ptp_skb = NULL;
	/* Sync 'ptp_skb' */
	FUNC8();
}