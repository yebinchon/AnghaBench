#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_card_rec {scalar_t__ rx_cmd_ep; int /*<<< orphan*/  rx_data_urb_pending; int /*<<< orphan*/  rx_cmd_urb_pending; } ;
struct urb_context {scalar_t__ ep; struct sk_buff* skb; struct mwifiex_adapter* adapter; } ;
struct urb {int actual_length; int status; scalar_t__ context; } ;
struct sk_buff {int len; } ;
struct mwifiex_adapter {int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  work_flags; scalar_t__ card; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ HIGH_RX_PENDING ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  MWIFIEX_IS_SUSPENDED ; 
 int MWIFIEX_RX_CMD_BUF_SIZE ; 
 int MWIFIEX_RX_DATA_BUF_SIZE ; 
 int /*<<< orphan*/  MWIFIEX_SURPRISE_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*) ; 
 int FUNC5 (struct mwifiex_adapter*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct urb_context*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct urb *urb)
{
	struct urb_context *context = (struct urb_context *)urb->context;
	struct mwifiex_adapter *adapter = context->adapter;
	struct sk_buff *skb = context->skb;
	struct usb_card_rec *card;
	int recv_length = urb->actual_length;
	int size, status;

	if (!adapter || !adapter->card) {
		FUNC7("mwifiex adapter or card structure is not valid\n");
		return;
	}

	card = (struct usb_card_rec *)adapter->card;
	if (card->rx_cmd_ep == context->ep)
		FUNC0(&card->rx_cmd_urb_pending);
	else
		FUNC0(&card->rx_data_urb_pending);

	if (recv_length) {
		if (urb->status ||
		    FUNC11(MWIFIEX_SURPRISE_REMOVED, &adapter->work_flags)) {
			FUNC3(adapter, ERROR,
				    "URB status is failed: %d\n", urb->status);
			/* Do not free skb in case of command ep */
			if (card->rx_cmd_ep != context->ep)
				FUNC2(skb);
			goto setup_for_next;
		}
		if (skb->len > recv_length)
			FUNC10(skb, recv_length);
		else
			FUNC9(skb, recv_length - skb->len);

		status = FUNC5(adapter, skb, context->ep);

		FUNC3(adapter, INFO,
			    "info: recv_length=%d, status=%d\n",
			    recv_length, status);
		if (status == -EINPROGRESS) {
			FUNC4(adapter);

			/* urb for data_ep is re-submitted now;
			 * urb for cmd_ep will be re-submitted in callback
			 * mwifiex_usb_recv_complete
			 */
			if (card->rx_cmd_ep == context->ep)
				return;
		} else {
			if (status == -1)
				FUNC3(adapter, ERROR,
					    "received data processing failed!\n");

			/* Do not free skb in case of command ep */
			if (card->rx_cmd_ep != context->ep)
				FUNC2(skb);
		}
	} else if (urb->status) {
		if (!FUNC11(MWIFIEX_IS_SUSPENDED, &adapter->work_flags)) {
			FUNC3(adapter, FATAL,
				    "Card is removed: %d\n", urb->status);
			FUNC8(MWIFIEX_SURPRISE_REMOVED, &adapter->work_flags);
		}
		FUNC2(skb);
		return;
	} else {
		/* Do not free skb in case of command ep */
		if (card->rx_cmd_ep != context->ep)
			FUNC2(skb);

		/* fall through setup_for_next */
	}

setup_for_next:
	if (card->rx_cmd_ep == context->ep)
		size = MWIFIEX_RX_CMD_BUF_SIZE;
	else
		size = MWIFIEX_RX_DATA_BUF_SIZE;

	if (card->rx_cmd_ep == context->ep) {
		FUNC6(context, size);
	} else {
		if (FUNC1(&adapter->rx_pending) <= HIGH_RX_PENDING) {
			FUNC6(context, size);
		} else {
			context->skb = NULL;
		}
	}

	return;
}