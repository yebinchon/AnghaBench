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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct ath10k_mgmt_tx_pkt_addr {int /*<<< orphan*/  paddr; struct sk_buff* vaddr; } ;
struct ath10k {int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(int msdu_id, void *ptr,
					       void *ctx)
{
	struct ath10k_mgmt_tx_pkt_addr *pkt_addr = ptr;
	struct ath10k *ar = ctx;
	struct sk_buff *msdu;

	FUNC0(ar, ATH10K_DBG_WMI,
		   "force cleanup mgmt msdu_id %hu\n", msdu_id);

	msdu = pkt_addr->vaddr;
	FUNC1(ar->dev, pkt_addr->paddr,
			 msdu->len, DMA_FROM_DEVICE);
	FUNC2(ar->hw, msdu);

	return 0;
}