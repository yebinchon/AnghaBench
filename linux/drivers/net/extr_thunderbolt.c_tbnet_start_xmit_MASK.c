#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  size_t u16 ;
struct thunderbolt_ip_frame_header {void* frame_id; void* frame_index; void* frame_size; } ;
struct TYPE_9__ {unsigned int size; } ;
struct tbnet_frame {TYPE_4__ frame; int /*<<< orphan*/  page; } ;
struct TYPE_7__ {unsigned int tx_bytes; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_8__ {size_t cons; int /*<<< orphan*/  ring; } ;
struct tbnet {TYPE_2__ stats; TYPE_3__ tx_ring; int /*<<< orphan*/  frame_id; TYPE_1__* svc; int /*<<< orphan*/  dev; } ;
struct sk_buff {unsigned int len; void* data; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_10__ {unsigned int nr_frags; } ;
struct TYPE_6__ {int prtcstns; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int TBNET_MATCH_FRAGS_ID ; 
 unsigned int TBNET_MAX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (size_t) ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,unsigned int) ; 
 struct tbnet* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct thunderbolt_ip_frame_header* FUNC11 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct sk_buff*) ; 
 TYPE_5__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 unsigned int FUNC15 (TYPE_3__*) ; 
 struct tbnet_frame* FUNC16 (struct tbnet*) ; 
 void* FUNC17 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC18 (struct tbnet*,struct sk_buff*,struct tbnet_frame**,size_t) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC20(struct sk_buff *skb,
				    struct net_device *dev)
{
	struct tbnet *net = FUNC9(dev);
	struct tbnet_frame *frames[MAX_SKB_FRAGS];
	u16 frame_id = FUNC2(&net->frame_id);
	struct thunderbolt_ip_frame_header *hdr;
	unsigned int len = FUNC12(skb);
	unsigned int data_len = skb->len;
	unsigned int nframes, i;
	unsigned int frag = 0;
	void *src = skb->data;
	u32 frame_index = 0;
	bool unmap = false;
	void *dest;

	nframes = FUNC0(data_len, TBNET_MAX_PAYLOAD_SIZE);
	if (FUNC15(&net->tx_ring) < nframes) {
		FUNC10(net->dev);
		return NETDEV_TX_BUSY;
	}

	frames[frame_index] = FUNC16(net);
	if (!frames[frame_index])
		goto err_drop;

	hdr = FUNC11(frames[frame_index]->page);
	dest = hdr + 1;

	/* If overall packet is bigger than the frame data size */
	while (data_len > TBNET_MAX_PAYLOAD_SIZE) {
		unsigned int size_left = TBNET_MAX_PAYLOAD_SIZE;

		hdr->frame_size = FUNC4(TBNET_MAX_PAYLOAD_SIZE);
		hdr->frame_index = FUNC3(frame_index);
		hdr->frame_id = FUNC3(frame_id);

		do {
			if (len > size_left) {
				/* Copy data onto Tx buffer data with
				 * full frame size then break and go to
				 * next frame
				 */
				FUNC8(dest, src, size_left);
				len -= size_left;
				dest += size_left;
				src += size_left;
				break;
			}

			FUNC8(dest, src, len);
			size_left -= len;
			dest += len;

			if (unmap) {
				FUNC7(src);
				unmap = false;
			}

			/* Ensure all fragments have been processed */
			if (frag < FUNC13(skb)->nr_frags) {
				/* Map and then unmap quickly */
				src = FUNC17(skb, frag++, &len);
				unmap = true;
			} else if (FUNC19(size_left > 0)) {
				goto err_drop;
			}
		} while (size_left > 0);

		data_len -= TBNET_MAX_PAYLOAD_SIZE;
		frame_index++;

		frames[frame_index] = FUNC16(net);
		if (!frames[frame_index])
			goto err_drop;

		hdr = FUNC11(frames[frame_index]->page);
		dest = hdr + 1;
	}

	hdr->frame_size = FUNC4(data_len);
	hdr->frame_index = FUNC3(frame_index);
	hdr->frame_id = FUNC3(frame_id);

	frames[frame_index]->frame.size = data_len + sizeof(*hdr);

	/* In case the remaining data_len is smaller than a frame */
	while (len < data_len) {
		FUNC8(dest, src, len);
		data_len -= len;
		dest += len;

		if (unmap) {
			FUNC7(src);
			unmap = false;
		}

		if (frag < FUNC13(skb)->nr_frags) {
			src = FUNC17(skb, frag++, &len);
			unmap = true;
		} else if (FUNC19(data_len > 0)) {
			goto err_drop;
		}
	}

	FUNC8(dest, src, data_len);

	if (unmap)
		FUNC7(src);

	if (!FUNC18(net, skb, frames, frame_index + 1))
		goto err_drop;

	for (i = 0; i < frame_index + 1; i++)
		FUNC14(net->tx_ring.ring, &frames[i]->frame);

	if (net->svc->prtcstns & TBNET_MATCH_FRAGS_ID)
		FUNC1(&net->frame_id);

	net->stats.tx_packets++;
	net->stats.tx_bytes += skb->len;

	FUNC5(skb);

	return NETDEV_TX_OK;

err_drop:
	/* We can re-use the buffers */
	net->tx_ring.cons -= frame_index;

	FUNC6(skb);
	net->stats.tx_errors++;

	return NETDEV_TX_OK;
}