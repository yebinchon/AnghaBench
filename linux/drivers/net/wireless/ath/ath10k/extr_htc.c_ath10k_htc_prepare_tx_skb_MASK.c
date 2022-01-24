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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ath10k_htc_hdr {scalar_t__ seq_no; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  eid; } ;
struct ath10k_htc_ep {TYPE_1__* htc; int /*<<< orphan*/  seq_no; scalar_t__ tx_credit_flow_enabled; int /*<<< orphan*/  eid; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k_htc_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ath10k_htc_ep *ep,
				      struct sk_buff *skb)
{
	struct ath10k_htc_hdr *hdr;

	hdr = (struct ath10k_htc_hdr *)skb->data;
	FUNC1(hdr, 0, sizeof(struct ath10k_htc_hdr));

	hdr->eid = ep->eid;
	hdr->len = FUNC0(skb->len - sizeof(*hdr));
	hdr->flags = 0;
	if (ep->tx_credit_flow_enabled)
		hdr->flags |= ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE;

	FUNC2(&ep->htc->tx_lock);
	hdr->seq_no = ep->seq_no++;
	FUNC3(&ep->htc->tx_lock);
}