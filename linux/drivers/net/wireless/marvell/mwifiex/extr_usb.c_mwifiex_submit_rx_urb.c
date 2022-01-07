
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int skb; } ;
struct usb_card_rec {scalar_t__ rx_cmd_ep; TYPE_1__ rx_cmd; int rx_cmd_urb_pending; } ;
struct mwifiex_adapter {scalar_t__ card; } ;


 int INTF_HEADER_LEN ;
 int MWIFIEX_RX_CMD_BUF_SIZE ;
 int atomic_read (int *) ;
 int mwifiex_usb_submit_rx_urb (TYPE_1__*,int ) ;
 int skb_push (int ,int ) ;

__attribute__((used)) static void mwifiex_submit_rx_urb(struct mwifiex_adapter *adapter, u8 ep)
{
 struct usb_card_rec *card = (struct usb_card_rec *)adapter->card;

 skb_push(card->rx_cmd.skb, INTF_HEADER_LEN);
 if ((ep == card->rx_cmd_ep) &&
     (!atomic_read(&card->rx_cmd_urb_pending)))
  mwifiex_usb_submit_rx_urb(&card->rx_cmd,
       MWIFIEX_RX_CMD_BUF_SIZE);

 return;
}
