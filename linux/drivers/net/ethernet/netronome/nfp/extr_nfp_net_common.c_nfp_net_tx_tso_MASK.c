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
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int data; int /*<<< orphan*/  encapsulation; } ;
struct nfp_net_tx_desc {int l3_offset; int l4_offset; int lso_hdrlen; int /*<<< orphan*/  flags; int /*<<< orphan*/  mss; } ;
struct nfp_net_tx_buf {int pkt_cnt; int real_len; } ;
struct nfp_net_r_vector {int /*<<< orphan*/  tx_sync; int /*<<< orphan*/  tx_lso; } ;
struct TYPE_2__ {int gso_segs; int gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_DESC_TX_LSO ; 
 int PCIE_DESC_TX_MSS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct nfp_net_r_vector *r_vec,
			   struct nfp_net_tx_buf *txbuf,
			   struct nfp_net_tx_desc *txd, struct sk_buff *skb,
			   u32 md_bytes)
{
	u32 l3_offset, l4_offset, hdrlen;
	u16 mss;

	if (!FUNC5(skb))
		return;

	if (!skb->encapsulation) {
		l3_offset = FUNC6(skb);
		l4_offset = FUNC8(skb);
		hdrlen = FUNC8(skb) + FUNC9(skb);
	} else {
		l3_offset = FUNC2(skb);
		l4_offset = FUNC4(skb);
		hdrlen = FUNC3(skb) - skb->data +
			FUNC1(skb);
	}

	txbuf->pkt_cnt = FUNC7(skb)->gso_segs;
	txbuf->real_len += hdrlen * (txbuf->pkt_cnt - 1);

	mss = FUNC7(skb)->gso_size & PCIE_DESC_TX_MSS_MASK;
	txd->l3_offset = l3_offset - md_bytes;
	txd->l4_offset = l4_offset - md_bytes;
	txd->lso_hdrlen = hdrlen - md_bytes;
	txd->mss = FUNC0(mss);
	txd->flags |= PCIE_DESC_TX_LSO;

	FUNC10(&r_vec->tx_sync);
	r_vec->tx_lso++;
	FUNC11(&r_vec->tx_sync);
}