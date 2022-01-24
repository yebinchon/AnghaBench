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
struct virtnet_rq_stats {int dummy; } ;
struct virtnet_info {unsigned int hdr_len; int /*<<< orphan*/  vdev; scalar_t__ big_packets; scalar_t__ mergeable_rx_bufs; struct net_device* dev; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  gso_size; int /*<<< orphan*/  gso_type; } ;
struct virtio_net_hdr_mrg_rxbuf {TYPE_2__ hdr; } ;
struct sk_buff {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; } ;
struct receive_queue {int /*<<< orphan*/  napi; int /*<<< orphan*/  vq; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 unsigned int ETH_HLEN ; 
 int VIRTIO_NET_HDR_F_DATA_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct receive_queue*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (struct net_device*,struct virtnet_info*,struct receive_queue*,void*,unsigned int,struct virtnet_rq_stats*) ; 
 struct sk_buff* FUNC9 (struct net_device*,struct virtnet_info*,struct receive_queue*,void*,void**,unsigned int,unsigned int*,struct virtnet_rq_stats*) ; 
 struct sk_buff* FUNC10 (struct net_device*,struct virtnet_info*,struct receive_queue*,void*,void**,unsigned int,unsigned int*,struct virtnet_rq_stats*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct virtio_net_hdr_mrg_rxbuf* FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct virtnet_info *vi, struct receive_queue *rq,
			void *buf, unsigned int len, void **ctx,
			unsigned int *xdp_xmit,
			struct virtnet_rq_stats *stats)
{
	struct net_device *dev = vi->dev;
	struct sk_buff *skb;
	struct virtio_net_hdr_mrg_rxbuf *hdr;

	if (FUNC13(len < vi->hdr_len + ETH_HLEN)) {
		FUNC6("%s: short packet %i\n", dev->name, len);
		dev->stats.rx_length_errors++;
		if (vi->mergeable_rx_bufs) {
			FUNC7(FUNC14(buf));
		} else if (vi->big_packets) {
			FUNC2(rq, buf);
		} else {
			FUNC7(FUNC14(buf));
		}
		return;
	}

	if (vi->mergeable_rx_bufs)
		skb = FUNC9(dev, vi, rq, buf, ctx, len, xdp_xmit,
					stats);
	else if (vi->big_packets)
		skb = FUNC8(dev, vi, rq, buf, len, stats);
	else
		skb = FUNC10(dev, vi, rq, buf, ctx, len, xdp_xmit, stats);

	if (FUNC13(!skb))
		return;

	hdr = FUNC12(skb);

	if (hdr->hdr.flags & VIRTIO_NET_HDR_F_DATA_VALID)
		skb->ip_summed = CHECKSUM_UNNECESSARY;

	if (FUNC16(skb, &hdr->hdr,
				  FUNC15(vi->vdev))) {
		FUNC4("%s: bad gso: type: %u, size: %u\n",
				     dev->name, hdr->hdr.gso_type,
				     hdr->hdr.gso_size);
		goto frame_err;
	}

	FUNC11(skb, FUNC17(rq->vq));
	skb->protocol = FUNC1(skb, dev);
	FUNC6("Receiving skb proto 0x%04x len %i type %i\n",
		 FUNC5(skb->protocol), skb->len, skb->pkt_type);

	FUNC3(&rq->napi, skb);
	return;

frame_err:
	dev->stats.rx_frame_errors++;
	FUNC0(skb);
}