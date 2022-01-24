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
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {struct usb_host_endpoint* endpoint; } ;
struct TYPE_6__ {scalar_t__ bInterval; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct urb {int dummy; } ;
struct r8152 {int intr_interval; int /*<<< orphan*/  intr_buff; int /*<<< orphan*/  udev; void* intr_urb; int /*<<< orphan*/  tx_free; TYPE_2__* tx_info; int /*<<< orphan*/  rx_count; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  rx_done; int /*<<< orphan*/  rx_info; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  rx_lock; struct usb_interface* intf; struct net_device* netdev; } ;
struct TYPE_4__ {scalar_t__ parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * head; int /*<<< orphan*/ * buffer; struct urb* urb; struct r8152* context; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTBUFSIZE ; 
 int RTL8152_MAX_RX ; 
 int RTL8152_MAX_TX ; 
 scalar_t__ TX_ALIGN ; 
 scalar_t__ agg_buf_sz ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*) ; 
 int /*<<< orphan*/  intr_callback ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct r8152 *tp)
{
	struct net_device *netdev = tp->netdev;
	struct usb_interface *intf = tp->intf;
	struct usb_host_interface *alt = intf->cur_altsetting;
	struct usb_host_endpoint *ep_intr = alt->endpoint + 2;
	int node, i;

	node = netdev->dev.parent ? FUNC3(netdev->dev.parent) : -1;

	FUNC10(&tp->rx_lock);
	FUNC10(&tp->tx_lock);
	FUNC0(&tp->rx_info);
	FUNC0(&tp->tx_free);
	FUNC0(&tp->rx_done);
	FUNC9(&tp->tx_queue);
	FUNC9(&tp->rx_queue);
	FUNC2(&tp->rx_count, 0);

	for (i = 0; i < RTL8152_MAX_RX; i++) {
		if (!FUNC1(tp, GFP_KERNEL))
			goto err1;
	}

	for (i = 0; i < RTL8152_MAX_TX; i++) {
		struct urb *urb;
		u8 *buf;

		buf = FUNC7(agg_buf_sz, GFP_KERNEL, node);
		if (!buf)
			goto err1;

		if (buf != FUNC11(buf)) {
			FUNC5(buf);
			buf = FUNC7(agg_buf_sz + TX_ALIGN, GFP_KERNEL,
					   node);
			if (!buf)
				goto err1;
		}

		urb = FUNC12(0, GFP_KERNEL);
		if (!urb) {
			FUNC5(buf);
			goto err1;
		}

		FUNC0(&tp->tx_info[i].list);
		tp->tx_info[i].context = tp;
		tp->tx_info[i].urb = urb;
		tp->tx_info[i].buffer = buf;
		tp->tx_info[i].head = FUNC11(buf);

		FUNC8(&tp->tx_info[i].list, &tp->tx_free);
	}

	tp->intr_urb = FUNC12(0, GFP_KERNEL);
	if (!tp->intr_urb)
		goto err1;

	tp->intr_buff = FUNC6(INTBUFSIZE, GFP_KERNEL);
	if (!tp->intr_buff)
		goto err1;

	tp->intr_interval = (int)ep_intr->desc.bInterval;
	FUNC13(tp->intr_urb, tp->udev, FUNC14(tp->udev, 3),
			 tp->intr_buff, INTBUFSIZE, intr_callback,
			 tp, tp->intr_interval);

	return 0;

err1:
	FUNC4(tp);
	return -ENOMEM;
}