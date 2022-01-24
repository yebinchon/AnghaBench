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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct ath10k_skb_rxcb {int /*<<< orphan*/  paddr; int /*<<< orphan*/  hlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  fill_cnt; int /*<<< orphan*/  lock; } ;
struct ath10k_htt {struct ath10k* ar; TYPE_1__ rx_ring; } ;
struct ath10k {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT_DUMP ; 
 struct ath10k_skb_rxcb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC2 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct ath10k_htt *htt,
					       u64 paddr)
{
	struct ath10k *ar = htt->ar;
	struct ath10k_skb_rxcb *rxcb;
	struct sk_buff *msdu;

	FUNC5(&htt->rx_ring.lock);

	msdu = FUNC2(ar, paddr);
	if (!msdu)
		return NULL;

	rxcb = FUNC0(msdu);
	FUNC4(&rxcb->hlist);
	htt->rx_ring.fill_cnt--;

	FUNC3(htt->ar->dev, rxcb->paddr,
			 msdu->len + FUNC6(msdu),
			 DMA_FROM_DEVICE);
	FUNC1(ar, ATH10K_DBG_HTT_DUMP, NULL, "htt rx netbuf pop: ",
			msdu->data, msdu->len + FUNC6(msdu));

	return msdu;
}