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
struct usb_tx_data_port {int block_status; scalar_t__ tx_data_ix; int /*<<< orphan*/  tx_aggr_lock; int /*<<< orphan*/  tx_data_ep; struct urb_context* tx_data_list; int /*<<< orphan*/  tx_data_urb_pending; } ;
struct urb_context {int dummy; } ;
struct tx_aggr_tmr_cnxt {struct usb_tx_data_port* port; struct mwifiex_adapter* adapter; } ;
struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mwifiex_adapter {int /*<<< orphan*/  data_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ MWIFIEX_TX_DATA_URB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct tx_aggr_tmr_cnxt* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hold_timer ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct mwifiex_adapter*,struct usb_tx_data_port*,int /*<<< orphan*/ ,struct urb_context*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*) ; 
 int FUNC5 (struct mwifiex_adapter*,struct usb_tx_data_port*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct tx_aggr_tmr_cnxt* timer_context ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct urb_context *urb_cnxt = NULL;
	struct sk_buff *skb_send = NULL;
	struct tx_aggr_tmr_cnxt *timer_context =
		FUNC1(timer_context, t, hold_timer);
	struct mwifiex_adapter *adapter = timer_context->adapter;
	struct usb_tx_data_port *port = timer_context->port;
	int err = 0;

	FUNC7(&port->tx_aggr_lock);
	err = FUNC5(adapter, port, &skb_send);
	if (err) {
		FUNC2(adapter, ERROR,
			    "prepare tx aggr skb failed, err=%d\n", err);
		goto unlock;
	}

	if (FUNC0(&port->tx_data_urb_pending) >=
	    MWIFIEX_TX_DATA_URB) {
		port->block_status = true;
		adapter->data_sent =
			FUNC4(adapter);
		err = -1;
		goto done;
	}

	if (port->tx_data_ix >= MWIFIEX_TX_DATA_URB)
		port->tx_data_ix = 0;

	urb_cnxt = &port->tx_data_list[port->tx_data_ix++];
	err = FUNC3(adapter, port, port->tx_data_ep,
					     urb_cnxt, skb_send);
done:
	if (err == -1)
		FUNC6(adapter, skb_send, 0, -1);
unlock:
	FUNC8(&port->tx_aggr_lock);
}