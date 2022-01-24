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
struct sk_buff {int dummy; } ;
struct if_usb_card {TYPE_1__* udev; struct sk_buff* rx_skb; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  ep_in; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LBTF_DEB_USB ; 
 int /*<<< orphan*/  MRVDRV_ETH_RX_PACKET_BUFFER_SIZE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (struct urb*),struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct if_usb_card *cardp,
				  void (*callbackfn)(struct urb *urb))
{
	struct sk_buff *skb;
	int ret = -1;

	FUNC2(LBTF_DEB_USB);

	skb = FUNC0(MRVDRV_ETH_RX_PACKET_BUFFER_SIZE);
	if (!skb) {
		FUNC6("No free skb\n");
		FUNC3(LBTF_DEB_USB);
		return -1;
	}

	cardp->rx_skb = skb;

	/* Fill the receive configuration URB and initialise the Rx call back */
	FUNC8(cardp->rx_urb, cardp->udev,
			  FUNC9(cardp->udev, cardp->ep_in),
			  FUNC7(skb),
			  MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, callbackfn, cardp);

	FUNC4(&cardp->udev->dev, "Pointer for rx_urb %p\n",
		cardp->rx_urb);
	ret = FUNC10(cardp->rx_urb, GFP_ATOMIC);
	if (ret) {
		FUNC5(&cardp->udev->dev,
			"Submit Rx URB failed: %d\n", ret);
		FUNC1(skb);
		cardp->rx_skb = NULL;
		FUNC3(LBTF_DEB_USB);
		return -1;
	} else {
		FUNC4(&cardp->udev->dev, "Submit Rx URB success\n");
		FUNC3(LBTF_DEB_USB);
		return 0;
	}
}