#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct if_usb_card {TYPE_1__* udev; struct sk_buff* rx_skb; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  ep_in; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPFIELD_ALIGN_OFFSET ; 
 int /*<<< orphan*/  MRVDRV_ETH_RX_PACKET_BUFFER_SIZE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,void (*) (struct urb*),struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct if_usb_card *cardp,
				  void (*callbackfn)(struct urb *urb))
{
	struct sk_buff *skb;
	int ret = -1;

	if (!(skb = FUNC0(MRVDRV_ETH_RX_PACKET_BUFFER_SIZE))) {
		FUNC4("No free skb\n");
		goto rx_ret;
	}

	cardp->rx_skb = skb;

	/* Fill the receive configuration URB and initialise the Rx call back */
	FUNC5(cardp->rx_urb, cardp->udev,
			  FUNC6(cardp->udev, cardp->ep_in),
			  skb->data + IPFIELD_ALIGN_OFFSET,
			  MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, callbackfn,
			  cardp);

	FUNC2(&cardp->udev->dev, "Pointer for rx_urb %p\n", cardp->rx_urb);
	if ((ret = FUNC7(cardp->rx_urb, GFP_ATOMIC))) {
		FUNC3(&cardp->udev->dev, "Submit Rx URB failed: %d\n", ret);
		FUNC1(skb);
		cardp->rx_skb = NULL;
		ret = -1;
	} else {
		FUNC2(&cardp->udev->dev, "Submit Rx URB success\n");
		ret = 0;
	}

rx_ret:
	return ret;
}