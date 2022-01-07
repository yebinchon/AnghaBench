
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_5__ {int is_hold_timer_set; scalar_t__ hold_tmo_msecs; int hold_timer; } ;
struct TYPE_6__ {scalar_t__ aggr_len; scalar_t__ aggr_num; TYPE_2__ timer_cnxt; int aggr_list; } ;
struct usb_tx_data_port {scalar_t__ tx_data_ix; int block_status; TYPE_3__ tx_aggr; struct urb_context* tx_data_list; int tx_data_urb_pending; } ;
struct urb_context {int dummy; } ;
struct txpd {int flags; } ;
struct sk_buff {int* data; int len; } ;
struct mwifiex_tx_param {scalar_t__ next_pkt_len; } ;
struct TYPE_4__ {int tx_aggr_align; scalar_t__ tx_aggr_max_size; scalar_t__ tx_aggr_max_num; } ;
struct mwifiex_adapter {int intf_hdr_len; int data_sent; TYPE_1__ bus_aggr; } ;


 int EINPROGRESS ;
 scalar_t__ MWIFIEX_TX_DATA_URB ;
 int MWIFIEX_TYPE_AGGR_DATA_V2 ;
 int MWIFIEX_TxPD_POWER_MGMT_NULL_PACKET ;
 scalar_t__ MWIFIEX_USB_TX_AGGR_TMO_MAX ;
 void* MWIFIEX_USB_TX_AGGR_TMO_MIN ;
 scalar_t__ atomic_read (int *) ;
 int cpu_to_le16 (int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int mwifiex_usb_construct_send_urb (struct mwifiex_adapter*,struct usb_tx_data_port*,int,struct urb_context*,struct sk_buff*) ;
 int mwifiex_usb_data_sent (struct mwifiex_adapter*) ;
 int mwifiex_usb_prepare_tx_aggr_skb (struct mwifiex_adapter*,struct usb_tx_data_port*,struct sk_buff**) ;
 int mwifiex_write_data_complete (struct mwifiex_adapter*,struct sk_buff*,int ,int) ;
 scalar_t__ skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int mwifiex_usb_aggr_tx_data(struct mwifiex_adapter *adapter, u8 ep,
        struct sk_buff *skb,
        struct mwifiex_tx_param *tx_param,
        struct usb_tx_data_port *port)
{
 u8 *payload, pad;
 u16 align = adapter->bus_aggr.tx_aggr_align;
 struct sk_buff *skb_send = ((void*)0);
 struct urb_context *context = ((void*)0);
 struct txpd *local_tx_pd =
  (struct txpd *)((u8 *)skb->data + adapter->intf_hdr_len);
 u8 f_send_aggr_buf = 0;
 u8 f_send_cur_buf = 0;
 u8 f_precopy_cur_buf = 0;
 u8 f_postcopy_cur_buf = 0;
 u32 timeout;
 int ret;


 pad = (align - (skb->len & (align - 1))) % align;

 if (tx_param && tx_param->next_pkt_len) {

  if (port->tx_aggr.aggr_len + skb->len + pad >
      adapter->bus_aggr.tx_aggr_max_size) {
   f_send_aggr_buf = 1;
   f_postcopy_cur_buf = 1;
  } else {

   f_precopy_cur_buf = 1;

   if (port->tx_aggr.aggr_len + skb->len + pad +
       tx_param->next_pkt_len >
       adapter->bus_aggr.tx_aggr_max_size ||
       port->tx_aggr.aggr_num + 2 >
       adapter->bus_aggr.tx_aggr_max_num) {



    f_send_aggr_buf = 1;
   }
  }
 } else {

  if (port->tx_aggr.aggr_num > 0) {

   if (port->tx_aggr.aggr_len + skb->len + pad >
       adapter->bus_aggr.tx_aggr_max_size) {



    f_send_cur_buf = 1;
   } else {

    f_precopy_cur_buf = 1;
   }

   f_send_aggr_buf = 1;
  } else {



    f_send_cur_buf = 1;
  }
 }

 if (local_tx_pd->flags & MWIFIEX_TxPD_POWER_MGMT_NULL_PACKET) {

  if (f_precopy_cur_buf) {
   if (skb_queue_empty(&port->tx_aggr.aggr_list)) {
    f_precopy_cur_buf = 0;
    f_send_aggr_buf = 0;
    f_send_cur_buf = 1;
   } else {
    f_send_aggr_buf = 1;
   }
  } else if (f_postcopy_cur_buf) {
   f_send_cur_buf = 1;
   f_postcopy_cur_buf = 0;
  }
 }

 if (f_precopy_cur_buf) {
  skb_queue_tail(&port->tx_aggr.aggr_list, skb);
  port->tx_aggr.aggr_len += (skb->len + pad);
  port->tx_aggr.aggr_num++;
  if (f_send_aggr_buf)
   goto send_aggr_buf;






  if (!port->tx_aggr.timer_cnxt.is_hold_timer_set) {
   port->tx_aggr.timer_cnxt.hold_tmo_msecs =
     MWIFIEX_USB_TX_AGGR_TMO_MIN;
   timeout =
    port->tx_aggr.timer_cnxt.hold_tmo_msecs;
   mod_timer(&port->tx_aggr.timer_cnxt.hold_timer,
      jiffies + msecs_to_jiffies(timeout));
   port->tx_aggr.timer_cnxt.is_hold_timer_set = 1;
  } else {
   if (port->tx_aggr.timer_cnxt.hold_tmo_msecs <
       MWIFIEX_USB_TX_AGGR_TMO_MAX) {

    timeout =
    ++port->tx_aggr.timer_cnxt.hold_tmo_msecs;
    mod_timer(&port->tx_aggr.timer_cnxt.hold_timer,
       jiffies + msecs_to_jiffies(timeout));
   }
  }
 }

send_aggr_buf:
 if (f_send_aggr_buf) {
  ret = mwifiex_usb_prepare_tx_aggr_skb(adapter, port, &skb_send);
  if (!ret) {
   context = &port->tx_data_list[port->tx_data_ix++];
   ret = mwifiex_usb_construct_send_urb(adapter, port, ep,
            context, skb_send);
   if (ret == -1)
    mwifiex_write_data_complete(adapter, skb_send,
           0, -1);
  }
 }

 if (f_send_cur_buf) {
  if (f_send_aggr_buf) {
   if (atomic_read(&port->tx_data_urb_pending) >=
       MWIFIEX_TX_DATA_URB) {
    port->block_status = 1;
    adapter->data_sent =
     mwifiex_usb_data_sent(adapter);

    f_postcopy_cur_buf = 1;
    goto postcopy_cur_buf;
   }

   if (port->tx_data_ix >= MWIFIEX_TX_DATA_URB)
    port->tx_data_ix = 0;
  }

  payload = skb->data;
  *(u16 *)&payload[2] =
   cpu_to_le16(MWIFIEX_TYPE_AGGR_DATA_V2 | 0x80);
  *(u16 *)payload = cpu_to_le16(skb->len);
  skb_send = skb;
  context = &port->tx_data_list[port->tx_data_ix++];
  return mwifiex_usb_construct_send_urb(adapter, port, ep,
            context, skb_send);
 }

postcopy_cur_buf:
 if (f_postcopy_cur_buf) {
  skb_queue_tail(&port->tx_aggr.aggr_list, skb);
  port->tx_aggr.aggr_len += (skb->len + pad);
  port->tx_aggr.aggr_num++;

  if (!port->tx_aggr.timer_cnxt.is_hold_timer_set) {
   port->tx_aggr.timer_cnxt.hold_tmo_msecs =
     MWIFIEX_USB_TX_AGGR_TMO_MIN;
   timeout = port->tx_aggr.timer_cnxt.hold_tmo_msecs;
   mod_timer(&port->tx_aggr.timer_cnxt.hold_timer,
      jiffies + msecs_to_jiffies(timeout));
   port->tx_aggr.timer_cnxt.is_hold_timer_set = 1;
  }
 }

 return -EINPROGRESS;
}
