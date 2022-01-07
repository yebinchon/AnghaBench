
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* urb; int ep; struct mwifiex_adapter* adapter; int skb; } ;
struct usb_card_rec {TYPE_1__* rx_data_list; int rx_data_ep; TYPE_1__ rx_cmd; int rx_cmd_ep; } ;
struct mwifiex_adapter {scalar_t__ card; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWIFIEX_RX_CMD_BUF_SIZE ;
 int MWIFIEX_RX_DATA_BUF_SIZE ;
 int MWIFIEX_RX_DATA_URB ;
 int dev_alloc_skb (int ) ;
 scalar_t__ mwifiex_usb_submit_rx_urb (TYPE_1__*,int ) ;
 void* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int mwifiex_usb_rx_init(struct mwifiex_adapter *adapter)
{
 struct usb_card_rec *card = (struct usb_card_rec *)adapter->card;
 int i;

 card->rx_cmd.adapter = adapter;
 card->rx_cmd.ep = card->rx_cmd_ep;

 card->rx_cmd.urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!card->rx_cmd.urb)
  return -ENOMEM;

 card->rx_cmd.skb = dev_alloc_skb(MWIFIEX_RX_CMD_BUF_SIZE);
 if (!card->rx_cmd.skb)
  return -ENOMEM;

 if (mwifiex_usb_submit_rx_urb(&card->rx_cmd, MWIFIEX_RX_CMD_BUF_SIZE))
  return -1;

 for (i = 0; i < MWIFIEX_RX_DATA_URB; i++) {
  card->rx_data_list[i].adapter = adapter;
  card->rx_data_list[i].ep = card->rx_data_ep;

  card->rx_data_list[i].urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!card->rx_data_list[i].urb)
   return -1;
  if (mwifiex_usb_submit_rx_urb(&card->rx_data_list[i],
           MWIFIEX_RX_DATA_BUF_SIZE))
   return -1;
 }

 return 0;
}
