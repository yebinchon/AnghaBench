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
struct sk_buff {int dummy; } ;
struct qede_ptp {int tx_skb; int /*<<< orphan*/  work; int /*<<< orphan*/  ptp_tx_start; } ;
struct qede_dev {int /*<<< orphan*/  ptp_skip_txts; int /*<<< orphan*/  flags; struct qede_ptp* ptp; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  QEDE_FLAGS_PTP_TX_IN_PRORGESS ; 
 int /*<<< orphan*/  QEDE_FLAGS_TX_TIMESTAMPING_EN ; 
 int /*<<< orphan*/  SKBTX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct qede_dev *edev, struct sk_buff *skb)
{
	struct qede_ptp *ptp;

	ptp = edev->ptp;
	if (!ptp)
		return;

	if (FUNC5(QEDE_FLAGS_PTP_TX_IN_PRORGESS,
				  &edev->flags)) {
		FUNC0(edev, "Timestamping in progress\n");
		edev->ptp_skip_txts++;
		return;
	}

	if (FUNC7(!FUNC6(QEDE_FLAGS_TX_TIMESTAMPING_EN, &edev->flags))) {
		FUNC0(edev,
		       "Tx timestamping was not enabled, this packet will not be timestamped\n");
		FUNC1(QEDE_FLAGS_PTP_TX_IN_PRORGESS, &edev->flags);
		edev->ptp_skip_txts++;
	} else if (FUNC7(ptp->tx_skb)) {
		FUNC0(edev,
		       "The device supports only a single outstanding packet to timestamp, this packet will not be timestamped\n");
		FUNC1(QEDE_FLAGS_PTP_TX_IN_PRORGESS, &edev->flags);
		edev->ptp_skip_txts++;
	} else {
		FUNC4(skb)->tx_flags |= SKBTX_IN_PROGRESS;
		/* schedule check for Tx timestamp */
		ptp->tx_skb = FUNC3(skb);
		ptp->ptp_tx_start = jiffies;
		FUNC2(&ptp->work);
	}
}