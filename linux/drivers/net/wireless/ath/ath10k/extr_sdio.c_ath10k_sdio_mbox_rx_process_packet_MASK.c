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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k_sdio_rx_data {int trailer_only; struct sk_buff* skb; } ;
struct ath10k_htc_hdr {int flags; scalar_t__ trailer_len; int /*<<< orphan*/  eid; } ;
struct ath10k_htc {int dummy; } ;
struct ath10k {struct ath10k_htc htc; } ;
typedef  enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;

/* Variables and functions */
 int ATH10K_HTC_FLAG_TRAILER_PRESENT ; 
 int FUNC0 (struct ath10k_htc*,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (struct ath10k_sdio_rx_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar,
					      struct ath10k_sdio_rx_data *pkt,
					      u32 *lookaheads,
					      int *n_lookaheads)
{
	struct ath10k_htc *htc = &ar->htc;
	struct sk_buff *skb = pkt->skb;
	struct ath10k_htc_hdr *htc_hdr = (struct ath10k_htc_hdr *)skb->data;
	bool trailer_present = htc_hdr->flags & ATH10K_HTC_FLAG_TRAILER_PRESENT;
	enum ath10k_htc_ep_id eid;
	u8 *trailer;
	int ret;

	if (trailer_present) {
		trailer = skb->data + skb->len - htc_hdr->trailer_len;

		eid = FUNC2(htc_hdr->eid);

		ret = FUNC0(htc,
						 trailer,
						 htc_hdr->trailer_len,
						 eid,
						 lookaheads,
						 n_lookaheads);
		if (ret)
			return ret;

		if (FUNC1(pkt))
			pkt->trailer_only = true;

		FUNC4(skb, skb->len - htc_hdr->trailer_len);
	}

	FUNC3(skb, sizeof(*htc_hdr));

	return 0;
}