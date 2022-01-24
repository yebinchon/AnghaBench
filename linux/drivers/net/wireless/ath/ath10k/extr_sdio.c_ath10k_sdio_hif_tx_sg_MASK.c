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
struct sk_buff {scalar_t__ len; } ;
struct ath10k_sdio {int /*<<< orphan*/  wr_async_work; int /*<<< orphan*/  workqueue; scalar_t__* mbox_size; scalar_t__* mbox_addr; } ;
struct ath10k_hif_sg_item {struct sk_buff* transfer_context; } ;
struct ath10k {int dummy; } ;
typedef  enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;

/* Variables and functions */
 size_t FUNC0 (struct ath10k_sdio*,scalar_t__) ; 
 int FUNC1 (struct ath10k*,scalar_t__,struct sk_buff*,int /*<<< orphan*/ *,int,int) ; 
 struct ath10k_sdio* FUNC2 (struct ath10k*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,size_t) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar, u8 pipe_id,
				 struct ath10k_hif_sg_item *items, int n_items)
{
	struct ath10k_sdio *ar_sdio = FUNC2(ar);
	enum ath10k_htc_ep_id eid;
	struct sk_buff *skb;
	int ret, i;

	eid = FUNC3(pipe_id);

	for (i = 0; i < n_items; i++) {
		size_t padded_len;
		u32 address;

		skb = items[i].transfer_context;
		padded_len = FUNC0(ar_sdio,
							      skb->len);
		FUNC5(skb, padded_len);

		/* Write TX data to the end of the mbox address space */
		address = ar_sdio->mbox_addr[eid] + ar_sdio->mbox_size[eid] -
			  skb->len;
		ret = FUNC1(ar, address, skb,
						 NULL, true, eid);
		if (ret)
			return ret;
	}

	FUNC4(ar_sdio->workqueue, &ar_sdio->wr_async_work);

	return 0;
}