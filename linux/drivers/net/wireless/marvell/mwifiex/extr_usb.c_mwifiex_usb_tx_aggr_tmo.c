
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_tx_data_port {int block_status; scalar_t__ tx_data_ix; int tx_aggr_lock; int tx_data_ep; struct urb_context* tx_data_list; int tx_data_urb_pending; } ;
struct urb_context {int dummy; } ;
struct tx_aggr_tmr_cnxt {struct usb_tx_data_port* port; struct mwifiex_adapter* adapter; } ;
struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mwifiex_adapter {int data_sent; } ;


 int ERROR ;
 scalar_t__ MWIFIEX_TX_DATA_URB ;
 scalar_t__ atomic_read (int *) ;
 struct tx_aggr_tmr_cnxt* from_timer (int ,struct timer_list*,int ) ;
 int hold_timer ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int) ;
 int mwifiex_usb_construct_send_urb (struct mwifiex_adapter*,struct usb_tx_data_port*,int ,struct urb_context*,struct sk_buff*) ;
 int mwifiex_usb_data_sent (struct mwifiex_adapter*) ;
 int mwifiex_usb_prepare_tx_aggr_skb (struct mwifiex_adapter*,struct usb_tx_data_port*,struct sk_buff**) ;
 int mwifiex_write_data_complete (struct mwifiex_adapter*,struct sk_buff*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct tx_aggr_tmr_cnxt* timer_context ;

__attribute__((used)) static void mwifiex_usb_tx_aggr_tmo(struct timer_list *t)
{
 struct urb_context *urb_cnxt = ((void*)0);
 struct sk_buff *skb_send = ((void*)0);
 struct tx_aggr_tmr_cnxt *timer_context =
  from_timer(timer_context, t, hold_timer);
 struct mwifiex_adapter *adapter = timer_context->adapter;
 struct usb_tx_data_port *port = timer_context->port;
 int err = 0;

 spin_lock_bh(&port->tx_aggr_lock);
 err = mwifiex_usb_prepare_tx_aggr_skb(adapter, port, &skb_send);
 if (err) {
  mwifiex_dbg(adapter, ERROR,
       "prepare tx aggr skb failed, err=%d\n", err);
  goto unlock;
 }

 if (atomic_read(&port->tx_data_urb_pending) >=
     MWIFIEX_TX_DATA_URB) {
  port->block_status = 1;
  adapter->data_sent =
   mwifiex_usb_data_sent(adapter);
  err = -1;
  goto done;
 }

 if (port->tx_data_ix >= MWIFIEX_TX_DATA_URB)
  port->tx_data_ix = 0;

 urb_cnxt = &port->tx_data_list[port->tx_data_ix++];
 err = mwifiex_usb_construct_send_urb(adapter, port, port->tx_data_ep,
          urb_cnxt, skb_send);
done:
 if (err == -1)
  mwifiex_write_data_complete(adapter, skb_send, 0, -1);
unlock:
 spin_unlock_bh(&port->tx_aggr_lock);
}
