#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  int u16 ;
struct sk_buff {unsigned char* data; int /*<<< orphan*/  truesize; int /*<<< orphan*/  len; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct TYPE_12__ {scalar_t__ rssi; } ;
struct rx_annex_header {int /*<<< orphan*/  addr2; TYPE_2__ rfmon; } ;
struct rfmon_header {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_5__ stats; } ;
struct iw_quality {int updated; scalar_t__ noise; scalar_t__ level; scalar_t__ qual; } ;
struct TYPE_13__ {scalar_t__ noise; } ;
struct TYPE_14__ {TYPE_3__ qual; } ;
struct TYPE_16__ {size_t free_data_rx; scalar_t__ iw_mode; scalar_t__* pci_map_rx_address; int /*<<< orphan*/  pdev; struct sk_buff** data_low_rx; TYPE_4__ local_iwstatistics; TYPE_7__* control_block; struct net_device* ndev; } ;
typedef  TYPE_6__ islpci_private ;
struct TYPE_17__ {int /*<<< orphan*/ * driver_curr_frag; TYPE_1__* rx_data_low; } ;
typedef  TYPE_7__ isl38xx_control_block ;
struct TYPE_11__ {int /*<<< orphan*/  address; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int ETH_ALEN ; 
 size_t ISL38XX_CB_RX_DATA_LQ ; 
 size_t ISL38XX_CB_RX_QSIZE ; 
 scalar_t__ IW_MODE_MONITOR ; 
 scalar_t__ MAX_FRAGMENT_SIZE_RX ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  SHOW_BUFFER_CONTENTS ; 
 int /*<<< orphan*/  SHOW_ERROR_MESSAGES ; 
 int /*<<< orphan*/  SHOW_FUNCTION_CALLS ; 
 int /*<<< orphan*/  SHOW_TRACING ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ init_wds ; 
 int FUNC6 (TYPE_6__*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*,int /*<<< orphan*/ ,struct iw_quality*) ; 
 int /*<<< orphan*/  FUNC24 () ; 

int
FUNC25(islpci_private *priv)
{
	struct net_device *ndev = priv->ndev;
	isl38xx_control_block *control_block = priv->control_block;
	struct sk_buff *skb;
	u16 size;
	u32 index, offset;
	unsigned char *src;
	int discard = 0;

#if VERBOSE > SHOW_ERROR_MESSAGES
	DEBUG(SHOW_FUNCTION_CALLS, "islpci_eth_receive\n");
#endif

	/* the device has written an Ethernet frame in the data area
	 * of the sk_buff without updating the structure, do it now */
	index = priv->free_data_rx % ISL38XX_CB_RX_QSIZE;
	size = FUNC8(control_block->rx_data_low[index].size);
	skb = priv->data_low_rx[index];
	offset = ((unsigned long)
		  FUNC10(control_block->rx_data_low[index].address) -
		  (unsigned long) skb->data) & 3;

#if VERBOSE > SHOW_ERROR_MESSAGES
	DEBUG(SHOW_TRACING,
	      "frq->addr %x skb->data %p skb->len %u offset %u truesize %u\n",
	      control_block->rx_data_low[priv->free_data_rx].address, skb->data,
	      skb->len, offset, skb->truesize);
#endif

	/* delete the streaming DMA mapping before processing the skb */
	FUNC15(priv->pdev,
			 priv->pci_map_rx_address[index],
			 MAX_FRAGMENT_SIZE_RX + 2, PCI_DMA_FROMDEVICE);

	/* update the skb structure and align the buffer */
	FUNC19(skb, size);
	if (offset) {
		/* shift the buffer allocation offset bytes to get the right frame */
		FUNC18(skb, 2);
		FUNC19(skb, 2);
	}
#if VERBOSE > SHOW_ERROR_MESSAGES
	/* display the buffer contents for debugging */
	DEBUG(SHOW_BUFFER_CONTENTS, "\nrx %p ", skb->data);
	display_buffer((char *) skb->data, skb->len);
#endif

	/* check whether WDS is enabled and whether the data frame is a WDS frame */

	if (init_wds) {
		/* WDS enabled, check for the wds address on the first 6 bytes of the buffer */
		src = skb->data + 6;
		FUNC11(skb->data, src, skb->len - 6);
		FUNC21(skb, skb->len - 6);
	}
#if VERBOSE > SHOW_ERROR_MESSAGES
	DEBUG(SHOW_TRACING, "Fragment size %i in skb at %p\n", size, skb);
	DEBUG(SHOW_TRACING, "Skb data at %p, length %i\n", skb->data, skb->len);

	/* display the buffer contents for debugging */
	DEBUG(SHOW_BUFFER_CONTENTS, "\nrx %p ", skb->data);
	display_buffer((char *) skb->data, skb->len);
#endif
	/* take care of monitor mode and spy monitoring. */
	if (FUNC22(priv->iw_mode == IW_MODE_MONITOR)) {
		skb->dev = ndev;
		discard = FUNC6(priv, &skb);
	} else {
		if (FUNC22(skb->data[2 * ETH_ALEN] == 0)) {
			/* The packet has a rx_annex. Read it for spy monitoring, Then
			 * remove it, while keeping the 2 leading MAC addr.
			 */
			struct iw_quality wstats;
			struct rx_annex_header *annex =
			    (struct rx_annex_header *) skb->data;
			wstats.level = annex->rfmon.rssi;
			/* The noise value can be a bit outdated if nobody's
			 * reading wireless stats... */
			wstats.noise = priv->local_iwstatistics.qual.noise;
			wstats.qual = wstats.level - wstats.noise;
			wstats.updated = 0x07;
			/* Update spy records */
			FUNC23(ndev, annex->addr2, &wstats);

			FUNC17(skb,
						  (skb->data +
						   sizeof(struct rfmon_header)),
						  2 * ETH_ALEN);
			FUNC18(skb, sizeof (struct rfmon_header));
		}
		skb->protocol = FUNC5(skb, ndev);
	}
	skb->ip_summed = CHECKSUM_NONE;
	ndev->stats.rx_packets++;
	ndev->stats.rx_bytes += size;

	/* deliver the skb to the network layer */
#ifdef ISLPCI_ETH_DEBUG
	printk
	    ("islpci_eth_receive:netif_rx %2.2X %2.2X %2.2X %2.2X %2.2X %2.2X\n",
	     skb->data[0], skb->data[1], skb->data[2], skb->data[3],
	     skb->data[4], skb->data[5]);
#endif
	if (FUNC22(discard)) {
		FUNC3(skb);
		skb = NULL;
	} else
		FUNC12(skb);

	/* increment the read index for the rx data low queue */
	priv->free_data_rx++;

	/* add one or more sk_buff structures */
	while (index =
	       FUNC10(control_block->
			   driver_curr_frag[ISL38XX_CB_RX_DATA_LQ]),
	       index - priv->free_data_rx < ISL38XX_CB_RX_QSIZE) {
		/* allocate an sk_buff for received data frames storage
		 * include any required allignment operations */
		skb = FUNC2(MAX_FRAGMENT_SIZE_RX + 2);
		if (FUNC22(skb == NULL)) {
			/* error allocating an sk_buff structure elements */
			FUNC0(SHOW_ERROR_MESSAGES, "Error allocating skb\n");
			break;
		}
		FUNC20(skb, (4 - (long) skb->data) & 0x03);
		/* store the new skb structure pointer */
		index = index % ISL38XX_CB_RX_QSIZE;
		priv->data_low_rx[index] = skb;

#if VERBOSE > SHOW_ERROR_MESSAGES
		DEBUG(SHOW_TRACING,
		      "new alloc skb %p skb->data %p skb->len %u index %u truesize %u\n",
		      skb, skb->data, skb->len, index, skb->truesize);
#endif

		/* set the streaming DMA mapping for proper PCI bus operation */
		priv->pci_map_rx_address[index] =
		    FUNC14(priv->pdev, (void *) skb->data,
				   MAX_FRAGMENT_SIZE_RX + 2,
				   PCI_DMA_FROMDEVICE);
		if (FUNC13(priv->pdev,
					  priv->pci_map_rx_address[index])) {
			/* error mapping the buffer to device accessible memory address */
			FUNC0(SHOW_ERROR_MESSAGES,
			      "Error mapping DMA address\n");

			/* free the skbuf structure before aborting */
			FUNC3(skb);
			skb = NULL;
			break;
		}
		/* update the fragment address */
		control_block->rx_data_low[index].address =
			FUNC1((u32)priv->pci_map_rx_address[index]);
		FUNC24();

		/* increment the driver read pointer */
		FUNC9(&control_block->
			     driver_curr_frag[ISL38XX_CB_RX_DATA_LQ], 1);
	}

	/* trigger the device */
	FUNC7(priv);

	return 0;
}