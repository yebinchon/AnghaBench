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
typedef  unsigned int u32 ;
struct slic_rx_queue {size_t done_idx; size_t put_idx; int /*<<< orphan*/  len; struct slic_rx_buffer* rxbuffs; } ;
struct slic_rx_desc {int /*<<< orphan*/  length; int /*<<< orphan*/  status; } ;
struct slic_rx_buffer {struct sk_buff* skb; scalar_t__ addr_offset; } ;
struct TYPE_4__ {unsigned int rx_bytes; unsigned int rx_packets; int /*<<< orphan*/  syncp; } ;
struct slic_device {TYPE_2__ stats; int /*<<< orphan*/  napi; TYPE_1__* pdev; struct net_device* netdev; struct slic_rx_queue rxq; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned int SLIC_IRHDDR_ERR ; 
 unsigned int SLIC_IRHDDR_FLEN_MSK ; 
 unsigned int SLIC_IRHDDR_SVALID ; 
 int /*<<< orphan*/  SLIC_RX_BUFF_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct slic_rx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct slic_rx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_addr ; 
 int /*<<< orphan*/  map_len ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  rx_mcasts ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct slic_device*,struct sk_buff*) ; 
 size_t FUNC14 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct slic_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (unsigned int) ; 

__attribute__((used)) static void FUNC19(struct slic_device *sdev, unsigned int todo,
				unsigned int *done)
{
	struct slic_rx_queue *rxq = &sdev->rxq;
	struct net_device *dev = sdev->netdev;
	struct slic_rx_buffer *buff;
	struct slic_rx_desc *desc;
	unsigned int frames = 0;
	unsigned int bytes = 0;
	struct sk_buff *skb;
	u32 status;
	u32 len;

	while (todo && (rxq->done_idx != rxq->put_idx)) {
		buff = &rxq->rxbuffs[rxq->done_idx];

		skb = buff->skb;
		if (!skb)
			break;

		desc = (struct slic_rx_desc *)skb->data;

		FUNC2(&sdev->pdev->dev,
					FUNC4(buff, map_addr),
					buff->addr_offset + sizeof(*desc),
					DMA_FROM_DEVICE);

		status = FUNC9(desc->status);
		if (!(status & SLIC_IRHDDR_SVALID)) {
			FUNC3(&sdev->pdev->dev,
						   FUNC4(buff,
								  map_addr),
						   buff->addr_offset +
						   sizeof(*desc),
						   DMA_FROM_DEVICE);
			break;
		}

		buff->skb = NULL;

		FUNC6(&sdev->pdev->dev,
				 FUNC4(buff, map_addr),
				 FUNC5(buff, map_len),
				 DMA_FROM_DEVICE);

		/* skip rx descriptor that is placed before the frame data */
		FUNC12(skb, SLIC_RX_BUFF_HDR_SIZE);

		if (FUNC18(status & SLIC_IRHDDR_ERR)) {
			FUNC13(sdev, skb);
			FUNC1(skb);
		} else {
			struct ethhdr *eh = (struct ethhdr *)skb->data;

			if (FUNC8(eh->h_dest))
				FUNC0(&sdev->stats, rx_mcasts);

			len = FUNC9(desc->length) & SLIC_IRHDDR_FLEN_MSK;
			FUNC11(skb, len);
			skb->protocol = FUNC7(skb, dev);
			skb->ip_summed = CHECKSUM_UNNECESSARY;

			FUNC10(&sdev->napi, skb);

			bytes += len;
			frames++;
		}
		rxq->done_idx = FUNC14(rxq->done_idx, rxq->len);
		todo--;
	}

	FUNC16(&sdev->stats.syncp);
	sdev->stats.rx_bytes += bytes;
	sdev->stats.rx_packets += frames;
	FUNC17(&sdev->stats.syncp);

	FUNC15(sdev, GFP_ATOMIC);
}