
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_card_rec {int * adapter; } ;
struct mwifiex_adapter {scalar_t__ card; } ;


 int mwifiex_usb_cleanup_tx_aggr (struct mwifiex_adapter*) ;
 int mwifiex_usb_free (struct usb_card_rec*) ;

__attribute__((used)) static void mwifiex_unregister_dev(struct mwifiex_adapter *adapter)
{
 struct usb_card_rec *card = (struct usb_card_rec *)adapter->card;

 mwifiex_usb_free(card);

 mwifiex_usb_cleanup_tx_aggr(adapter);

 card->adapter = ((void*)0);
}
