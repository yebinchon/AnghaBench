#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union wil_tx_desc {int dummy; } wil_tx_desc ;
typedef  int u32 ;
struct wil_tx_enhanced_desc {int dummy; } ;
struct wil_ring_tx_data {scalar_t__ last_idle; int /*<<< orphan*/  idle; int /*<<< orphan*/  enabled; } ;
struct wil_ring {int swhead; int size; struct wil_ctx* ctx; TYPE_2__* va; int /*<<< orphan*/  hwtail; } ;
struct wil_ctx {int dummy; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {scalar_t__ tx_latency; int /*<<< orphan*/  ring_idle_trsh; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;
struct sk_buff {int len; scalar_t__ ip_summed; struct wil_ctx* cb; int /*<<< orphan*/ * data; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_6__ {int nr_frags; int gso_size; int gso_type; int /*<<< orphan*/ * frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  enhanced; } ;
struct TYPE_5__ {TYPE_1__ tx; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_HLEN ; 
#define  SKB_GSO_TCPV4 129 
#define  SKB_GSO_TCPV6 128 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct wil_ctx*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 
 TYPE_3__* FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (struct wil6210_priv*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wil_ring*,int) ; 
 int FUNC12 (struct wil_ring*) ; 
 int FUNC13 (struct wil_ring*) ; 
 struct device* FUNC14 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  wil_tso_type_first ; 
 int /*<<< orphan*/  wil_tso_type_hdr ; 
 int /*<<< orphan*/  wil_tso_type_lst ; 
 int /*<<< orphan*/  wil_tso_type_mid ; 
 int /*<<< orphan*/  FUNC15 (struct device*,union wil_tx_desc*,struct wil_ctx*) ; 
 int FUNC16 (struct wil6210_priv*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct wil_ring*,struct sk_buff*,int,int,int,int,int*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct wil6210_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static int FUNC20(struct wil6210_priv *wil,
				  struct wil6210_vif *vif,
				  struct wil_ring *ring,
				  struct sk_buff *skb)
{
	int ring_index = ring - wil->ring_tx;
	struct wil_ring_tx_data *txdata = &wil->ring_tx_data[ring_index];
	int nr_frags = FUNC6(skb)->nr_frags;
	int min_desc_required = nr_frags + 2; /* Headers, Head, Fragments */
	int used, avail = FUNC12(ring);
	int f, hdrlen, headlen;
	int gso_type;
	bool is_ipv4;
	u32 swhead = ring->swhead;
	int descs_used = 0; /* total number of used descriptors */
	int rc = -EINVAL;
	int tcp_hdr_len;
	int skb_net_hdr_len;
	int mss = FUNC6(skb)->gso_size;

	FUNC9(wil, "tx_ring_tso: %d bytes to ring %d\n", skb->len,
		     ring_index);

	if (FUNC8(!txdata->enabled))
		return -EINVAL;

	if (FUNC8(avail < min_desc_required)) {
		FUNC10(wil,
				    "TSO: Tx ring[%2d] full. No space for %d fragments\n",
				    ring_index, min_desc_required);
		return -ENOMEM;
	}

	gso_type = FUNC6(skb)->gso_type & (SKB_GSO_TCPV6 | SKB_GSO_TCPV4);
	switch (gso_type) {
	case SKB_GSO_TCPV4:
		is_ipv4 = true;
		break;
	case SKB_GSO_TCPV6:
		is_ipv4 = false;
		break;
	default:
		return -EINVAL;
	}

	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return -EINVAL;

	/* tcp header length and skb network header length are fixed for all
	 * packet's descriptors - read them once here
	 */
	tcp_hdr_len = FUNC7(skb);
	skb_net_hdr_len = FUNC5(skb);

	/* First descriptor must contain the header only
	 * Header Length = MAC header len + IP header len + TCP header len
	 */
	hdrlen = ETH_HLEN + tcp_hdr_len + skb_net_hdr_len;
	FUNC9(wil, "TSO: process header descriptor, hdrlen %u\n",
		     hdrlen);
	rc = FUNC16(wil, skb->data, hdrlen, swhead,
				 wil_tso_type_hdr, NULL, ring, skb,
				 is_ipv4, tcp_hdr_len, skb_net_hdr_len,
				 mss, &descs_used);
	if (rc)
		return -EINVAL;

	/* Second descriptor contains the head */
	headlen = FUNC4(skb) - hdrlen;
	FUNC9(wil, "TSO: process skb head, headlen %u\n", headlen);
	rc = FUNC16(wil, skb->data + hdrlen, headlen,
				 (swhead + descs_used) % ring->size,
				 (nr_frags != 0) ? wil_tso_type_first :
				 wil_tso_type_lst, NULL, ring, skb,
				 is_ipv4, tcp_hdr_len, skb_net_hdr_len,
				 mss, &descs_used);
	if (rc)
		goto mem_error;

	/* Rest of the descriptors are from the SKB fragments */
	for (f = 0; f < nr_frags; f++) {
		skb_frag_t *frag = &FUNC6(skb)->frags[f];
		int len = FUNC3(frag);

		FUNC9(wil, "TSO: frag[%d]: len %u, descs_used %d\n", f,
			     len, descs_used);

		rc = FUNC16(wil, NULL, len,
					 (swhead + descs_used) % ring->size,
					 (f != nr_frags - 1) ?
					 wil_tso_type_mid : wil_tso_type_lst,
					 frag, ring, skb, is_ipv4,
					 tcp_hdr_len, skb_net_hdr_len,
					 mss, &descs_used);
		if (rc)
			goto mem_error;
	}

	/* performance monitoring */
	used = FUNC13(ring);
	if (FUNC17(wil->ring_idle_trsh,
			     used, used + descs_used)) {
		txdata->idle += FUNC0() - txdata->last_idle;
		FUNC9(wil,  "Ring[%2d] not idle %d -> %d\n",
			     ring_index, used, used + descs_used);
	}

	/* advance swhead */
	FUNC11(ring, descs_used);
	FUNC9(wil, "TSO: Tx swhead %d -> %d\n", swhead, ring->swhead);

	/* make sure all writes to descriptors (shared memory) are done before
	 * committing them to HW
	 */
	FUNC19();

	if (wil->tx_latency)
		*(ktime_t *)&skb->cb = FUNC1();
	else
		FUNC2(skb->cb, 0, sizeof(ktime_t));

	FUNC18(wil, ring->hwtail, ring->swhead);

	return 0;

mem_error:
	while (descs_used > 0) {
		struct device *dev = FUNC14(wil);
		struct wil_ctx *ctx;
		int i = (swhead + descs_used - 1) % ring->size;
		struct wil_tx_enhanced_desc dd, *d = &dd;
		struct wil_tx_enhanced_desc *_desc =
			(struct wil_tx_enhanced_desc *)
			&ring->va[i].tx.enhanced;

		*d = *_desc;
		ctx = &ring->ctx[i];
		FUNC15(dev, (union wil_tx_desc *)d, ctx);
		FUNC2(ctx, 0, sizeof(*ctx));
		descs_used--;
	}
	return rc;
}