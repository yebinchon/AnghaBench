#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {int dummy; } ;
struct gs_tx_context {unsigned int echo_id; } ;
struct gs_host_frame {unsigned int echo_id; int /*<<< orphan*/  data; int /*<<< orphan*/  can_dlc; int /*<<< orphan*/  can_id; int /*<<< orphan*/  channel; } ;
struct gs_can {int /*<<< orphan*/  udev; int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  tx_submitted; int /*<<< orphan*/  channel; TYPE_1__* netdev; } ;
struct can_frame {int /*<<< orphan*/  can_dlc; int /*<<< orphan*/  data; int /*<<< orphan*/  can_id; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GSUSB_ENDPOINT_OUT ; 
 unsigned int GS_MAX_TX_URBS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct gs_tx_context* FUNC7 (struct gs_can*) ; 
 int /*<<< orphan*/  FUNC8 (struct gs_tx_context*) ; 
 int /*<<< orphan*/  gs_usb_xmit_callback ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*,...) ; 
 struct gs_can* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (int) ; 
 struct gs_host_frame* FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gs_host_frame*,int,int /*<<< orphan*/ ,struct gs_tx_context*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,struct gs_host_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct urb*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct urb*) ; 

__attribute__((used)) static netdev_tx_t FUNC24(struct sk_buff *skb,
				     struct net_device *netdev)
{
	struct gs_can *dev = FUNC11(netdev);
	struct net_device_stats *stats = &dev->netdev->stats;
	struct urb *urb;
	struct gs_host_frame *hf;
	struct can_frame *cf;
	int rc;
	unsigned int idx;
	struct gs_tx_context *txc;

	if (FUNC3(netdev, skb))
		return NETDEV_TX_OK;

	/* find an empty context to keep track of transmission */
	txc = FUNC7(dev);
	if (!txc)
		return NETDEV_TX_BUSY;

	/* create a URB, and a buffer for it */
	urb = FUNC16(0, GFP_ATOMIC);
	if (!urb)
		goto nomem_urb;

	hf = FUNC15(dev->udev, sizeof(*hf), GFP_ATOMIC,
				&urb->transfer_dma);
	if (!hf) {
		FUNC10(netdev, "No memory left for USB buffer\n");
		goto nomem_hf;
	}

	idx = txc->echo_id;

	if (idx >= GS_MAX_TX_URBS) {
		FUNC10(netdev, "Invalid tx context %d\n", idx);
		goto badidx;
	}

	hf->echo_id = idx;
	hf->channel = dev->channel;

	cf = (struct can_frame *)skb->data;

	hf->can_id = cf->can_id;
	hf->can_dlc = cf->can_dlc;
	FUNC9(hf->data, cf->data, cf->can_dlc);

	FUNC18(urb, dev->udev,
			  FUNC21(dev->udev, GSUSB_ENDPOINT_OUT),
			  hf,
			  sizeof(*hf),
			  gs_usb_xmit_callback,
			  txc);

	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	FUNC17(urb, &dev->tx_submitted);

	FUNC5(skb, netdev, idx);

	FUNC1(&dev->active_tx_urbs);

	rc = FUNC22(urb, GFP_ATOMIC);
	if (FUNC14(rc)) {			/* usb send failed */
		FUNC0(&dev->active_tx_urbs);

		FUNC4(netdev, idx);
		FUNC8(txc);

		FUNC23(urb);
		FUNC19(dev->udev,
				  sizeof(*hf),
				  hf,
				  urb->transfer_dma);

		if (rc == -ENODEV) {
			FUNC12(netdev);
		} else {
			FUNC10(netdev, "usb_submit failed (err=%d)\n", rc);
			stats->tx_dropped++;
		}
	} else {
		/* Slow down tx path */
		if (FUNC2(&dev->active_tx_urbs) >= GS_MAX_TX_URBS)
			FUNC13(netdev);
	}

	/* let usb core take care of this urb */
	FUNC20(urb);

	return NETDEV_TX_OK;

 badidx:
	FUNC19(dev->udev,
			  sizeof(*hf),
			  hf,
			  urb->transfer_dma);
 nomem_hf:
	FUNC20(urb);

 nomem_urb:
	FUNC8(txc);
	FUNC6(skb);
	stats->tx_dropped++;
	return NETDEV_TX_OK;
}