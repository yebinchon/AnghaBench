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
typedef  int u32 ;
typedef  int u16 ;
struct xdp_frame {int dummy; } ;
struct xdp_buff {void* data; void* data_end; int /*<<< orphan*/ * rxq; void* data_hard_start; } ;
struct virtnet_rq_stats {unsigned int bytes; int /*<<< orphan*/  drops; int /*<<< orphan*/  xdp_drops; int /*<<< orphan*/  xdp_redirects; int /*<<< orphan*/  xdp_tx; int /*<<< orphan*/  xdp_packets; } ;
struct virtnet_info {unsigned int hdr_len; int /*<<< orphan*/  vdev; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int gso_type; } ;
struct virtio_net_hdr_mrg_rxbuf {int /*<<< orphan*/  num_buffers; TYPE_1__ hdr; } ;
struct sk_buff {unsigned int truesize; unsigned int data_len; unsigned int len; struct sk_buff* next; } ;
struct receive_queue {int /*<<< orphan*/  vq; int /*<<< orphan*/  mrg_avg_pkt_len; int /*<<< orphan*/  xdp_rxq; int /*<<< orphan*/  xdp_prog; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_length_errors; } ;
struct net_device {TYPE_2__ stats; int /*<<< orphan*/  name; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_6__ {int nr_frags; struct sk_buff* frag_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_SKB_FRAGS ; 
 unsigned int PAGE_SIZE ; 
 int VIRTIO_XDP_HEADROOM ; 
 unsigned int VIRTIO_XDP_REDIR ; 
 unsigned int VIRTIO_XDP_TX ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct xdp_frame* FUNC4 (struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC7 (void*) ; 
 unsigned int FUNC8 (void*) ; 
 void* FUNC9 (struct page*) ; 
 struct sk_buff* FUNC10 (struct virtnet_info*,struct receive_queue*,struct page*,int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 struct bpf_prog* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int,struct page*,int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC17 (struct sk_buff*,int,struct page*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int,unsigned int,unsigned int) ; 
 TYPE_3__* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct bpf_prog*,int) ; 
 scalar_t__ FUNC21 (int) ; 
 struct page* FUNC22 (void*) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC24 (struct virtnet_info*) ; 
 int FUNC25 (struct net_device*,int,struct xdp_frame**,int /*<<< orphan*/ ) ; 
 void* FUNC26 (int /*<<< orphan*/ ,unsigned int*) ; 
 void* FUNC27 (int /*<<< orphan*/ ,unsigned int*,void**) ; 
 int FUNC28 (struct net_device*,struct xdp_buff*,struct bpf_prog*) ; 
 struct page* FUNC29 (struct receive_queue*,int*,struct page*,int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC30 (struct xdp_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC31(struct net_device *dev,
					 struct virtnet_info *vi,
					 struct receive_queue *rq,
					 void *buf,
					 void *ctx,
					 unsigned int len,
					 unsigned int *xdp_xmit,
					 struct virtnet_rq_stats *stats)
{
	struct virtio_net_hdr_mrg_rxbuf *hdr = buf;
	u16 num_buf = FUNC23(vi->vdev, hdr->num_buffers);
	struct page *page = FUNC22(buf);
	int offset = buf - FUNC9(page);
	struct sk_buff *head_skb, *curr_skb;
	struct bpf_prog *xdp_prog;
	unsigned int truesize;
	unsigned int headroom = FUNC7(ctx);
	int err;

	head_skb = NULL;
	stats->bytes += len - vi->hdr_len;

	FUNC14();
	xdp_prog = FUNC13(rq->xdp_prog);
	if (xdp_prog) {
		struct xdp_frame *xdpf;
		struct page *xdp_page;
		struct xdp_buff xdp;
		void *data;
		u32 act;

		/* Transient failure which in theory could occur if
		 * in-flight packets from before XDP was enabled reach
		 * the receive path after XDP is loaded.
		 */
		if (FUNC21(hdr->hdr.gso_type))
			goto err_xdp;

		/* This happens when rx buffer size is underestimated
		 * or headroom is not enough because of the buffer
		 * was refilled before XDP is set. This should only
		 * happen for the first several packets, so we don't
		 * care much about its performance.
		 */
		if (FUNC21(num_buf > 1 ||
			     headroom < FUNC24(vi))) {
			/* linearize data for XDP */
			xdp_page = FUNC29(rq, &num_buf,
						      page, offset,
						      VIRTIO_XDP_HEADROOM,
						      &len);
			if (!xdp_page)
				goto err_xdp;
			offset = VIRTIO_XDP_HEADROOM;
		} else {
			xdp_page = page;
		}

		/* Allow consuming headroom but reserve enough space to push
		 * the descriptor on if we get an XDP_TX return code.
		 */
		data = FUNC9(xdp_page) + offset;
		xdp.data_hard_start = data - VIRTIO_XDP_HEADROOM + vi->hdr_len;
		xdp.data = data + vi->hdr_len;
		FUNC30(&xdp);
		xdp.data_end = xdp.data + (len - vi->hdr_len);
		xdp.rxq = &rq->xdp_rxq;

		act = FUNC2(xdp_prog, &xdp);
		stats->xdp_packets++;

		switch (act) {
		case XDP_PASS:
			/* recalculate offset to account for any header
			 * adjustments. Note other cases do not build an
			 * skb and avoid using offset
			 */
			offset = xdp.data -
					FUNC9(xdp_page) - vi->hdr_len;

			/* recalculate len if xdp.data or xdp.data_end were
			 * adjusted
			 */
			len = xdp.data_end - xdp.data + vi->hdr_len;
			/* We can only create skb based on xdp_page. */
			if (FUNC21(xdp_page != page)) {
				FUNC15();
				FUNC12(page);
				head_skb = FUNC10(vi, rq, xdp_page,
						       offset, len,
						       PAGE_SIZE, false);
				return head_skb;
			}
			break;
		case XDP_TX:
			stats->xdp_tx++;
			xdpf = FUNC4(&xdp);
			if (FUNC21(!xdpf))
				goto err_xdp;
			err = FUNC25(dev, 1, &xdpf, 0);
			if (FUNC21(err < 0)) {
				FUNC20(vi->dev, xdp_prog, act);
				if (FUNC21(xdp_page != page))
					FUNC12(xdp_page);
				goto err_xdp;
			}
			*xdp_xmit |= VIRTIO_XDP_TX;
			if (FUNC21(xdp_page != page))
				FUNC12(page);
			FUNC15();
			goto xdp_xmit;
		case XDP_REDIRECT:
			stats->xdp_redirects++;
			err = FUNC28(dev, &xdp, xdp_prog);
			if (err) {
				if (FUNC21(xdp_page != page))
					FUNC12(xdp_page);
				goto err_xdp;
			}
			*xdp_xmit |= VIRTIO_XDP_REDIR;
			if (FUNC21(xdp_page != page))
				FUNC12(page);
			FUNC15();
			goto xdp_xmit;
		default:
			FUNC3(act);
			/* fall through */
		case XDP_ABORTED:
			FUNC20(vi->dev, xdp_prog, act);
			/* fall through */
		case XDP_DROP:
			if (FUNC21(xdp_page != page))
				FUNC0(xdp_page, 0);
			goto err_xdp;
		}
	}
	FUNC15();

	truesize = FUNC8(ctx);
	if (FUNC21(len > truesize)) {
		FUNC11("%s: rx error: len %u exceeds truesize %lu\n",
			 dev->name, len, (unsigned long)ctx);
		dev->stats.rx_length_errors++;
		goto err_skb;
	}

	head_skb = FUNC10(vi, rq, page, offset, len, truesize, !xdp_prog);
	curr_skb = head_skb;

	if (FUNC21(!curr_skb))
		goto err_skb;
	while (--num_buf) {
		int num_skb_frags;

		buf = FUNC27(rq->vq, &len, &ctx);
		if (FUNC21(!buf)) {
			FUNC11("%s: rx error: %d buffers out of %d missing\n",
				 dev->name, num_buf,
				 FUNC23(vi->vdev,
						 hdr->num_buffers));
			dev->stats.rx_length_errors++;
			goto err_buf;
		}

		stats->bytes += len;
		page = FUNC22(buf);

		truesize = FUNC8(ctx);
		if (FUNC21(len > truesize)) {
			FUNC11("%s: rx error: len %u exceeds truesize %lu\n",
				 dev->name, len, (unsigned long)ctx);
			dev->stats.rx_length_errors++;
			goto err_skb;
		}

		num_skb_frags = FUNC19(curr_skb)->nr_frags;
		if (FUNC21(num_skb_frags == MAX_SKB_FRAGS)) {
			struct sk_buff *nskb = FUNC1(0, GFP_ATOMIC);

			if (FUNC21(!nskb))
				goto err_skb;
			if (curr_skb == head_skb)
				FUNC19(curr_skb)->frag_list = nskb;
			else
				curr_skb->next = nskb;
			curr_skb = nskb;
			head_skb->truesize += nskb->truesize;
			num_skb_frags = 0;
		}
		if (curr_skb != head_skb) {
			head_skb->data_len += len;
			head_skb->len += len;
			head_skb->truesize += truesize;
		}
		offset = buf - FUNC9(page);
		if (FUNC17(curr_skb, num_skb_frags, page, offset)) {
			FUNC12(page);
			FUNC18(curr_skb, num_skb_frags - 1,
					     len, truesize);
		} else {
			FUNC16(curr_skb, num_skb_frags, page,
					offset, len, truesize);
		}
	}

	FUNC6(&rq->mrg_avg_pkt_len, head_skb->len);
	return head_skb;

err_xdp:
	FUNC15();
	stats->xdp_drops++;
err_skb:
	FUNC12(page);
	while (num_buf-- > 1) {
		buf = FUNC26(rq->vq, &len);
		if (FUNC21(!buf)) {
			FUNC11("%s: rx error: %d buffers missing\n",
				 dev->name, num_buf);
			dev->stats.rx_length_errors++;
			break;
		}
		stats->bytes += len;
		page = FUNC22(buf);
		FUNC12(page);
	}
err_buf:
	stats->drops++;
	FUNC5(head_skb);
xdp_xmit:
	return NULL;
}