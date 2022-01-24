#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_packets; } ;
struct fza_private {int ring_hst_rx_index; int* rx_dma; int ring_hst_rx_size; TYPE_4__* ring_hst_rx; int /*<<< orphan*/  name; TYPE_3__ stats; struct sk_buff** rx_skbuff; TYPE_1__* regs; int /*<<< orphan*/  bdev; } ;
struct TYPE_6__ {int fc; int* daddr; } ;
struct fza_fddihdr {TYPE_2__ hdr; } ;
struct fza_buffer_tx {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  buf0_own; int /*<<< orphan*/  buffer1; int /*<<< orphan*/  rmc; } ;
struct TYPE_5__ {int /*<<< orphan*/  control_a; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int FDDI_FC_K_CLASS_ASYNC ; 
 int FDDI_FC_K_CLASS_MASK ; 
 int FDDI_FC_K_FORMAT_MANAGEMENT ; 
 int FDDI_FC_K_FORMAT_MASK ; 
 int FZA_CONTROL_A_SMT_RX_OVFL ; 
 int FZA_RING_OWN_FZA ; 
 int FZA_RING_OWN_MASK ; 
 int FZA_RING_PBC_MASK ; 
 int FZA_RING_RX_DA_MASK ; 
 int FZA_RING_RX_DA_PROM ; 
 scalar_t__ FZA_RX_BUFFER_SIZE ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC7 (struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct fza_buffer_tx*,int,int,struct net_device*) ; 
 scalar_t__ FUNC9 (struct fza_private*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 struct fza_private* FUNC11 (struct net_device*) ; 
 int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct net_device *dev)
{
	struct fza_private *fp = FUNC11(dev);
	struct sk_buff *skb, *newskb;
	struct fza_fddihdr *frame;
	dma_addr_t dma, newdma;
	u32 own, rmc, buf;
	int i, len;
	u8 fc;

	while (1) {
		i = fp->ring_hst_rx_index;
		own = FUNC14(&fp->ring_hst_rx[i].buf0_own);
		if ((own & FZA_RING_OWN_MASK) == FZA_RING_OWN_FZA)
			break;

		rmc = FUNC15(&fp->ring_hst_rx[i].rmc);
		skb = fp->rx_skbuff[i];
		dma = fp->rx_dma[i];

		/* The RMC doesn't count the preamble and the starting
		 * delimiter.  We fix it up here for a total of 3 octets.
		 */
		FUNC3();
		len = (rmc & FZA_RING_PBC_MASK) + 3;
		frame = (struct fza_fddihdr *)skb->data;

		/* We need to get at real FC. */
		FUNC4(fp->bdev,
					dma +
					((u8 *)&frame->hdr.fc - (u8 *)frame),
					sizeof(frame->hdr.fc),
					DMA_FROM_DEVICE);
		fc = frame->hdr.fc;

		if (FUNC9(fp, rmc, fc))
			goto err_rx;

		/* We have to 512-byte-align RX buffers... */
		newskb = FUNC7(dev, FZA_RX_BUFFER_SIZE + 511);
		if (newskb) {
			FUNC10(newskb, 512);
			newdma = FUNC1(fp->bdev, newskb->data,
						FZA_RX_BUFFER_SIZE,
						DMA_FROM_DEVICE);
			if (FUNC2(fp->bdev, newdma)) {
				FUNC0(newskb);
				newskb = NULL;
			}
		}
		if (newskb) {
			int pkt_len = len - 7;	/* Omit P, SD and FCS. */
			int is_multi;
			int rx_stat;

			FUNC5(fp->bdev, dma, FZA_RX_BUFFER_SIZE,
					 DMA_FROM_DEVICE);

			/* Queue SMT frames to the SMT receive ring. */
			if ((fc & (FDDI_FC_K_CLASS_MASK |
				   FDDI_FC_K_FORMAT_MASK)) ==
			     (FDDI_FC_K_CLASS_ASYNC |
			      FDDI_FC_K_FORMAT_MANAGEMENT) &&
			    (rmc & FZA_RING_RX_DA_MASK) !=
			     FZA_RING_RX_DA_PROM) {
				if (FUNC8((struct fza_buffer_tx *)
						    skb->data, len, rmc,
						    dev)) {
					FUNC18(FZA_CONTROL_A_SMT_RX_OVFL,
						 &fp->regs->control_a);
				}
			}

			is_multi = ((frame->hdr.daddr[0] & 0x01) != 0);

			FUNC17(skb, 3);	/* Skip over P and SD. */
			FUNC16(skb, pkt_len);	/* And cut off FCS. */
			skb->protocol = FUNC6(skb, dev);

			rx_stat = FUNC12(skb);
			if (rx_stat != NET_RX_DROP) {
				fp->stats.rx_packets++;
				fp->stats.rx_bytes += pkt_len;
				if (is_multi)
					fp->stats.multicast++;
			} else {
				fp->stats.rx_dropped++;
			}

			skb = newskb;
			dma = newdma;
			fp->rx_skbuff[i] = skb;
			fp->rx_dma[i] = dma;
		} else {
			fp->stats.rx_dropped++;
			FUNC13("%s: memory squeeze, dropping packet\n",
				  fp->name);
		}

err_rx:
		FUNC18(0, &fp->ring_hst_rx[i].rmc);
		buf = (dma + 0x1000) >> 9;
		FUNC18(buf, &fp->ring_hst_rx[i].buffer1);
		buf = dma >> 9 | FZA_RING_OWN_FZA;
		FUNC18(buf, &fp->ring_hst_rx[i].buf0_own);
		fp->ring_hst_rx_index =
			(fp->ring_hst_rx_index + 1) % fp->ring_hst_rx_size;
	}
}