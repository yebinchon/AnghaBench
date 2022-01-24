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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sk_buff {int data; int len; } ;
struct ath10k_htc_hdr {int trailer_len; int flags; int /*<<< orphan*/  len; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ep_rx_complete ) (struct ath10k*,struct sk_buff*) ;} ;
struct ath10k_htc_ep {scalar_t__ service_id; TYPE_1__ ep_ops; } ;
struct ath10k_htc {struct ath10k_htc_ep* endpoint; } ;
struct ath10k {struct ath10k_htc htc; } ;
typedef  enum ath10k_htc_ep_id { ____Placeholder_ath10k_htc_ep_id } ath10k_htc_ep_id ;

/* Variables and functions */
 int ATH10K_HTC_FLAG_TRAILER_PRESENT ; 
 int FUNC0 (struct ath10k_htc*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct ath10k_htc_hdr*) ; 
 scalar_t__ FUNC4 (struct ath10k_htc_hdr*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct ath10k *ar, struct sk_buff *skb)
{
	struct ath10k_htc *htc = &ar->htc;
	struct ath10k_htc_hdr *htc_hdr;
	enum ath10k_htc_ep_id eid;
	struct ath10k_htc_ep *ep;
	u16 payload_len;
	u8 *trailer;
	int ret;

	htc_hdr = (struct ath10k_htc_hdr *)skb->data;
	eid = FUNC3(htc_hdr);
	ep = &ar->htc.endpoint[eid];

	if (ep->service_id == 0) {
		FUNC1(ar, "ep %d is not connected\n", eid);
		goto out_free_skb;
	}

	payload_len = FUNC5(htc_hdr->len);
	if (!payload_len) {
		FUNC1(ar, "zero length frame received, firmware crashed?\n");
		goto out_free_skb;
	}

	if (payload_len < htc_hdr->trailer_len) {
		FUNC1(ar, "malformed frame received, firmware crashed?\n");
		goto out_free_skb;
	}

	if (htc_hdr->flags & ATH10K_HTC_FLAG_TRAILER_PRESENT) {
		trailer = skb->data + sizeof(*htc_hdr) + payload_len -
			  htc_hdr->trailer_len;

		ret = FUNC0(htc,
						 trailer,
						 htc_hdr->trailer_len,
						 eid,
						 NULL,
						 NULL);
		if (ret)
			goto out_free_skb;

		if (FUNC4(htc_hdr))
			goto out_free_skb;

		/* strip off the trailer from the skb since it should not
		 * be passed on to upper layers
		 */
		FUNC7(skb, skb->len - htc_hdr->trailer_len);
	}

	FUNC6(skb, sizeof(*htc_hdr));
	ep->ep_ops.ep_rx_complete(ar, skb);
	/* The RX complete handler now owns the skb... */

	return;

out_free_skb:
	FUNC2(skb);
}