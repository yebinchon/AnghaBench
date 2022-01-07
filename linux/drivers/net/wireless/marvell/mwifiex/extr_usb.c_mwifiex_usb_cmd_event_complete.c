
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mwifiex_adapter {int dummy; } ;


 int MWIFIEX_USB_EP_CMD_EVENT ;
 int mwifiex_submit_rx_urb (struct mwifiex_adapter*,int ) ;

__attribute__((used)) static int mwifiex_usb_cmd_event_complete(struct mwifiex_adapter *adapter,
           struct sk_buff *skb)
{
 mwifiex_submit_rx_urb(adapter, MWIFIEX_USB_EP_CMD_EVENT);

 return 0;
}
