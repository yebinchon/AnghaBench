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
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct usbnet {int maxpacket; TYPE_2__* driver_info; TYPE_4__* net; scalar_t__* data; } ;
struct usb_cdc_ncm_nth16 {void* wBlockLength; void* wNdpIndex; void* wSequence; void* wHeaderLength; int /*<<< orphan*/  dwSignature; } ;
struct usb_cdc_ncm_ndp16 {void* wLength; TYPE_1__* dpe16; } ;
struct usb_cdc_ncm_dpe16 {int dummy; } ;
struct sk_buff {size_t len; scalar_t__ data; } ;
struct cdc_ncm_ctx {int drvflags; size_t max_ndp_size; scalar_t__ tx_low_mem_val; size_t tx_curr_size; size_t tx_max; scalar_t__ tx_low_mem_max_cnt; scalar_t__ tx_curr_frame_num; size_t tx_curr_frame_payload; scalar_t__ tx_max_datagrams; scalar_t__ timer_interval; scalar_t__ min_tx_pkt; struct sk_buff* tx_curr_skb; int /*<<< orphan*/  tx_ntbs; int /*<<< orphan*/  tx_overhead; scalar_t__ delayed_ndp16; scalar_t__ tx_ndp_modulus; int /*<<< orphan*/  tx_reason_max_datagram; int /*<<< orphan*/  tx_timer_pending; int /*<<< orphan*/  tx_reason_ndp_full; int /*<<< orphan*/  tx_reason_ntb_full; struct sk_buff* tx_rem_sign; struct sk_buff* tx_rem_skb; scalar_t__ tx_remainder; scalar_t__ tx_modulus; int /*<<< orphan*/  tx_seq; } ;
typedef  struct sk_buff* __le32 ;
struct TYPE_7__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_8__ {TYPE_3__ stats; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {void* wDatagramIndex; void* wDatagramLength; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,scalar_t__) ; 
 scalar_t__ CDC_NCM_DPT_DATAGRAMS_MAX ; 
 int CDC_NCM_FLAG_NDP_TO_END ; 
 scalar_t__ CDC_NCM_LOW_MEM_MAX_CNT ; 
 scalar_t__ CDC_NCM_RESTART_TIMER_DATAGRAM_CNT ; 
 int /*<<< orphan*/  CDC_NCM_TIMER_PENDING_CNT ; 
 int FLAG_SEND_ZLP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t USB_CDC_NCM_NTB_MIN_OUT_SIZE ; 
 int /*<<< orphan*/  USB_CDC_NCM_NTH16_SIGN ; 
 struct sk_buff* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__,scalar_t__,size_t) ; 
 struct usb_cdc_ncm_ndp16* FUNC3 (struct cdc_ncm_ctx*,struct sk_buff*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cdc_ncm_ctx*) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (void*) ; 
 size_t FUNC9 (size_t,size_t) ; 
 struct usb_cdc_ncm_ndp16* FUNC10 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC11 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct usb_cdc_ncm_nth16* FUNC14 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,scalar_t__,long) ; 

struct sk_buff *
FUNC17(struct usbnet *dev, struct sk_buff *skb, __le32 sign)
{
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
	struct usb_cdc_ncm_nth16 *nth16;
	struct usb_cdc_ncm_ndp16 *ndp16;
	struct sk_buff *skb_out;
	u16 n = 0, index, ndplen;
	u8 ready2send = 0;
	u32 delayed_ndp_size;
	size_t padding_count;

	/* When our NDP gets written in cdc_ncm_ndp(), then skb_out->len gets updated
	 * accordingly. Otherwise, we should check here.
	 */
	if (ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END)
		delayed_ndp_size = FUNC0(ctx->max_ndp_size, ctx->tx_ndp_modulus);
	else
		delayed_ndp_size = 0;

	/* if there is a remaining skb, it gets priority */
	if (skb != NULL) {
		FUNC15(skb, ctx->tx_rem_skb);
		FUNC15(sign, ctx->tx_rem_sign);
	} else {
		ready2send = 1;
	}

	/* check if we are resuming an OUT skb */
	skb_out = ctx->tx_curr_skb;

	/* allocate a new OUT skb */
	if (!skb_out) {
		if (ctx->tx_low_mem_val == 0) {
			ctx->tx_curr_size = ctx->tx_max;
			skb_out = FUNC1(ctx->tx_curr_size, GFP_ATOMIC);
			/* If the memory allocation fails we will wait longer
			 * each time before attempting another full size
			 * allocation again to not overload the system
			 * further.
			 */
			if (skb_out == NULL) {
				ctx->tx_low_mem_max_cnt = FUNC11(ctx->tx_low_mem_max_cnt + 1,
							      (unsigned)CDC_NCM_LOW_MEM_MAX_CNT);
				ctx->tx_low_mem_val = ctx->tx_low_mem_max_cnt;
			}
		}
		if (skb_out == NULL) {
			/* See if a very small allocation is possible.
			 * We will send this packet immediately and hope
			 * that there is more memory available later.
			 */
			if (skb)
				ctx->tx_curr_size = FUNC9(skb->len,
					(u32)USB_CDC_NCM_NTB_MIN_OUT_SIZE);
			else
				ctx->tx_curr_size = USB_CDC_NCM_NTB_MIN_OUT_SIZE;
			skb_out = FUNC1(ctx->tx_curr_size, GFP_ATOMIC);

			/* No allocation possible so we will abort */
			if (skb_out == NULL) {
				if (skb != NULL) {
					FUNC7(skb);
					dev->net->stats.tx_dropped++;
				}
				goto exit_no_skb;
			}
			ctx->tx_low_mem_val--;
		}
		/* fill out the initial 16-bit NTB header */
		nth16 = FUNC14(skb_out, sizeof(struct usb_cdc_ncm_nth16));
		nth16->dwSignature = FUNC6(USB_CDC_NCM_NTH16_SIGN);
		nth16->wHeaderLength = FUNC5(sizeof(struct usb_cdc_ncm_nth16));
		nth16->wSequence = FUNC5(ctx->tx_seq++);

		/* count total number of frames in this NTB */
		ctx->tx_curr_frame_num = 0;

		/* recent payload counter for this skb_out */
		ctx->tx_curr_frame_payload = 0;
	}

	for (n = ctx->tx_curr_frame_num; n < ctx->tx_max_datagrams; n++) {
		/* send any remaining skb first */
		if (skb == NULL) {
			skb = ctx->tx_rem_skb;
			sign = ctx->tx_rem_sign;
			ctx->tx_rem_skb = NULL;

			/* check for end of skb */
			if (skb == NULL)
				break;
		}

		/* get the appropriate NDP for this skb */
		ndp16 = FUNC3(ctx, skb_out, sign, skb->len + ctx->tx_modulus + ctx->tx_remainder);

		/* align beginning of next frame */
		FUNC2(skb_out,  ctx->tx_modulus, ctx->tx_remainder, ctx->tx_curr_size);

		/* check if we had enough room left for both NDP and frame */
		if (!ndp16 || skb_out->len + skb->len + delayed_ndp_size > ctx->tx_curr_size) {
			if (n == 0) {
				/* won't fit, MTU problem? */
				FUNC7(skb);
				skb = NULL;
				dev->net->stats.tx_dropped++;
			} else {
				/* no room for skb - store for later */
				if (ctx->tx_rem_skb != NULL) {
					FUNC7(ctx->tx_rem_skb);
					dev->net->stats.tx_dropped++;
				}
				ctx->tx_rem_skb = skb;
				ctx->tx_rem_sign = sign;
				skb = NULL;
				ready2send = 1;
				ctx->tx_reason_ntb_full++;	/* count reason for transmitting */
			}
			break;
		}

		/* calculate frame number withing this NDP */
		ndplen = FUNC8(ndp16->wLength);
		index = (ndplen - sizeof(struct usb_cdc_ncm_ndp16)) / sizeof(struct usb_cdc_ncm_dpe16) - 1;

		/* OK, add this skb */
		ndp16->dpe16[index].wDatagramLength = FUNC5(skb->len);
		ndp16->dpe16[index].wDatagramIndex = FUNC5(skb_out->len);
		ndp16->wLength = FUNC5(ndplen + sizeof(struct usb_cdc_ncm_dpe16));
		FUNC12(skb_out, skb->data, skb->len);
		ctx->tx_curr_frame_payload += skb->len;	/* count real tx payload data */
		FUNC7(skb);
		skb = NULL;

		/* send now if this NDP is full */
		if (index >= CDC_NCM_DPT_DATAGRAMS_MAX) {
			ready2send = 1;
			ctx->tx_reason_ndp_full++;	/* count reason for transmitting */
			break;
		}
	}

	/* free up any dangling skb */
	if (skb != NULL) {
		FUNC7(skb);
		skb = NULL;
		dev->net->stats.tx_dropped++;
	}

	ctx->tx_curr_frame_num = n;

	if (n == 0) {
		/* wait for more frames */
		/* push variables */
		ctx->tx_curr_skb = skb_out;
		goto exit_no_skb;

	} else if ((n < ctx->tx_max_datagrams) && (ready2send == 0) && (ctx->timer_interval > 0)) {
		/* wait for more frames */
		/* push variables */
		ctx->tx_curr_skb = skb_out;
		/* set the pending count */
		if (n < CDC_NCM_RESTART_TIMER_DATAGRAM_CNT)
			ctx->tx_timer_pending = CDC_NCM_TIMER_PENDING_CNT;
		goto exit_no_skb;

	} else {
		if (n == ctx->tx_max_datagrams)
			ctx->tx_reason_max_datagram++;	/* count reason for transmitting */
		/* frame goes out */
		/* variables will be reset at next call */
	}

	/* If requested, put NDP at end of frame. */
	if (ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END) {
		nth16 = (struct usb_cdc_ncm_nth16 *)skb_out->data;
		FUNC2(skb_out, ctx->tx_ndp_modulus, 0, ctx->tx_curr_size - ctx->max_ndp_size);
		nth16->wNdpIndex = FUNC5(skb_out->len);
		FUNC12(skb_out, ctx->delayed_ndp16, ctx->max_ndp_size);

		/* Zero out delayed NDP - signature checking will naturally fail. */
		ndp16 = FUNC10(ctx->delayed_ndp16, 0, ctx->max_ndp_size);
	}

	/* If collected data size is less or equal ctx->min_tx_pkt
	 * bytes, we send buffers as it is. If we get more data, it
	 * would be more efficient for USB HS mobile device with DMA
	 * engine to receive a full size NTB, than canceling DMA
	 * transfer and receiving a short packet.
	 *
	 * This optimization support is pointless if we end up sending
	 * a ZLP after full sized NTBs.
	 */
	if (!(dev->driver_info->flags & FLAG_SEND_ZLP) &&
	    skb_out->len > ctx->min_tx_pkt) {
		padding_count = ctx->tx_curr_size - skb_out->len;
		FUNC14(skb_out, padding_count);
	} else if (skb_out->len < ctx->tx_curr_size &&
		   (skb_out->len % dev->maxpacket) == 0) {
		FUNC13(skb_out, 0);	/* force short packet */
	}

	/* set final frame length */
	nth16 = (struct usb_cdc_ncm_nth16 *)skb_out->data;
	nth16->wBlockLength = FUNC5(skb_out->len);

	/* return skb */
	ctx->tx_curr_skb = NULL;

	/* keep private stats: framing overhead and number of NTBs */
	ctx->tx_overhead += skb_out->len - ctx->tx_curr_frame_payload;
	ctx->tx_ntbs++;

	/* usbnet will count all the framing overhead by default.
	 * Adjust the stats so that the tx_bytes counter show real
	 * payload data instead.
	 */
	FUNC16(skb_out, n,
				(long)ctx->tx_curr_frame_payload - skb_out->len);

	return skb_out;

exit_no_skb:
	/* Start timer, if there is a remaining non-empty skb */
	if (ctx->tx_curr_skb != NULL && n > 0)
		FUNC4(ctx);
	return NULL;
}