#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct tcphdr {int doff; } ;
struct sk_buff {scalar_t__ ip_summed; unsigned char* data; scalar_t__ encapsulation; } ;
struct fm10k_tx_desc {int hdrlen; int /*<<< orphan*/  mss; } ;
struct fm10k_tx_buffer {int bytecount; int /*<<< orphan*/  gso_segs; int /*<<< orphan*/  tx_flags; struct sk_buff* skb; } ;
struct fm10k_ring {TYPE_2__* netdev; int /*<<< orphan*/  next_to_use; } ;
struct TYPE_4__ {int /*<<< orphan*/  features; } ;
struct TYPE_3__ {int /*<<< orphan*/  gso_size; int /*<<< orphan*/  gso_segs; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 struct fm10k_tx_desc* FUNC0 (struct fm10k_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM10K_TX_FLAGS_CSUM ; 
 int /*<<< orphan*/  NETIF_F_GSO_UDP_TUNNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 unsigned char* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct fm10k_ring *tx_ring,
		     struct fm10k_tx_buffer *first)
{
	struct sk_buff *skb = first->skb;
	struct fm10k_tx_desc *tx_desc;
	unsigned char *th;
	u8 hdrlen;

	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return 0;

	if (!FUNC6(skb))
		return 0;

	/* compute header lengths */
	if (skb->encapsulation) {
		if (!FUNC2(skb))
			goto err_vxlan;
		th = FUNC5(skb);
	} else {
		th = FUNC8(skb);
	}

	/* compute offset from SOF to transport header and add header len */
	hdrlen = (th - skb->data) + (((struct tcphdr *)th)->doff << 2);

	first->tx_flags |= FM10K_TX_FLAGS_CSUM;

	/* update gso size and bytecount with header size */
	first->gso_segs = FUNC7(skb)->gso_segs;
	first->bytecount += (first->gso_segs - 1) * hdrlen;

	/* populate Tx descriptor header size and mss */
	tx_desc = FUNC0(tx_ring, tx_ring->next_to_use);
	tx_desc->hdrlen = hdrlen;
	tx_desc->mss = FUNC1(FUNC7(skb)->gso_size);

	return 1;

err_vxlan:
	tx_ring->netdev->features &= ~NETIF_F_GSO_UDP_TUNNEL;
	if (FUNC3())
		FUNC4(tx_ring->netdev,
			   "TSO requested for unsupported tunnel, disabling offload\n");
	return -1;
}