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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct usbnet {scalar_t__ rx_urb_size; int hard_mtu; int /*<<< orphan*/  out; int /*<<< orphan*/  udev; int /*<<< orphan*/  net; TYPE_4__* intf; scalar_t__* data; } ;
struct TYPE_10__ {int /*<<< orphan*/  dwNtbOutMaxSize; } ;
struct cdc_ncm_ctx {int rx_max; int tx_max; int /*<<< orphan*/  min_tx_pkt; int /*<<< orphan*/ * tx_curr_skb; TYPE_5__ ncm_parm; TYPE_3__* control; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_6__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDC_NCM_MIN_TX_PKT ; 
 int /*<<< orphan*/  USB_CDC_SET_NTB_INPUT_SIZE ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (struct usbnet*,int) ; 
 int FUNC1 (struct usbnet*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u16 ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC14 (struct usbnet*) ; 
 scalar_t__ FUNC15 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC16(struct usbnet *dev, u32 new_rx, u32 new_tx)
{
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
	u8 iface_no = ctx->control->cur_altsetting->desc.bInterfaceNumber;
	u32 val;

	val = FUNC0(dev, new_rx);

	/* inform device about NTB input size changes */
	if (val != ctx->rx_max) {
		__le32 dwNtbInMaxSize = FUNC3(val);

		FUNC5(&dev->intf->dev, "setting rx_max = %u\n", val);

		/* tell device to use new size */
		if (FUNC15(dev, USB_CDC_SET_NTB_INPUT_SIZE,
				     USB_TYPE_CLASS | USB_DIR_OUT
				     | USB_RECIP_INTERFACE,
				     0, iface_no, &dwNtbInMaxSize, 4) < 0)
			FUNC4(&dev->intf->dev, "Setting NTB Input Size failed\n");
		else
			ctx->rx_max = val;
	}

	/* usbnet use these values for sizing rx queues */
	if (dev->rx_urb_size != ctx->rx_max) {
		dev->rx_urb_size = ctx->rx_max;
		if (FUNC8(dev->net))
			FUNC13(dev);
	}

	val = FUNC1(dev, new_tx);
	if (val != ctx->tx_max)
		FUNC5(&dev->intf->dev, "setting tx_max = %u\n", val);

	/* Adding a pad byte here if necessary simplifies the handling
	 * in cdc_ncm_fill_tx_frame, making tx_max always represent
	 * the real skb max size.
	 *
	 * We cannot use dev->maxpacket here because this is called from
	 * .bind which is called before usbnet sets up dev->maxpacket
	 */
	if (val != FUNC7(ctx->ncm_parm.dwNtbOutMaxSize) &&
	    val % FUNC11(dev->udev, dev->out, 1) == 0)
		val++;

	/* we might need to flush any pending tx buffers if running */
	if (FUNC8(dev->net) && val > ctx->tx_max) {
		FUNC9(dev->net);
		FUNC12(NULL, dev->net);
		/* make sure tx_curr_skb is reallocated if it was empty */
		if (ctx->tx_curr_skb) {
			FUNC6(ctx->tx_curr_skb);
			ctx->tx_curr_skb = NULL;
		}
		ctx->tx_max = val;
		FUNC10(dev->net);
	} else {
		ctx->tx_max = val;
	}

	dev->hard_mtu = ctx->tx_max;

	/* max qlen depend on hard_mtu and rx_urb_size */
	FUNC14(dev);

	/* never pad more than 3 full USB packets per transfer */
	ctx->min_tx_pkt = FUNC2(u16, ctx->tx_max - 3 * FUNC11(dev->udev, dev->out, 1),
				  CDC_NCM_MIN_TX_PKT, ctx->tx_max);
}