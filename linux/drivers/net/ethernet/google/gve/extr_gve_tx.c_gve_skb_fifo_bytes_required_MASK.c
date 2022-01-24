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
struct sk_buff {int len; } ;
struct gve_tx_ring {int /*<<< orphan*/  tx_fifo; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC6(struct gve_tx_ring *tx,
					      struct sk_buff *skb)
{
	int pad_bytes, align_hdr_pad;
	int bytes;
	int hlen;

	hlen = FUNC4(skb) ? FUNC2(skb) +
				 FUNC5(skb) : FUNC3(skb);

	pad_bytes = FUNC1(&tx->tx_fifo,
						   hlen);
	/* We need to take into account the header alignment padding. */
	align_hdr_pad = FUNC0(hlen) - hlen;
	bytes = align_hdr_pad + pad_bytes + skb->len;

	return bytes;
}