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
struct sk_buff {int dummy; } ;
struct i40e_pf {int flags; int /*<<< orphan*/  tx_hwtstamp_timeouts; int /*<<< orphan*/  state; struct sk_buff* ptp_tx_skb; scalar_t__ ptp_tx_start; int /*<<< orphan*/  ptp_tx; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int I40E_FLAG_PTP ; 
 int /*<<< orphan*/  __I40E_PTP_TX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

void FUNC4(struct i40e_pf *pf)
{
	struct sk_buff *skb;

	if (!(pf->flags & I40E_FLAG_PTP) || !pf->ptp_tx)
		return;

	/* Nothing to do if we're not already waiting for a timestamp */
	if (!FUNC2(__I40E_PTP_TX_IN_PROGRESS, pf->state))
		return;

	/* We already have a handler routine which is run when we are notified
	 * of a Tx timestamp in the hardware. If we don't get an interrupt
	 * within a second it is reasonable to assume that we never will.
	 */
	if (FUNC3(pf->ptp_tx_start + HZ)) {
		skb = pf->ptp_tx_skb;
		pf->ptp_tx_skb = NULL;
		FUNC0(__I40E_PTP_TX_IN_PROGRESS, pf->state);

		/* Free the skb after we clear the bitlock */
		FUNC1(skb);
		pf->tx_hwtstamp_timeouts++;
	}
}