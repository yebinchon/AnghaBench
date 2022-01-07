
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_card_rec {scalar_t__ usb_boot_state; } ;
struct mwifiex_fw_image {int dummy; } ;
struct mwifiex_adapter {scalar_t__ card; } ;


 scalar_t__ USB8XXX_FW_DNLD ;
 int mwifiex_prog_fw_w_helper (struct mwifiex_adapter*,struct mwifiex_fw_image*) ;
 int mwifiex_usb_rx_init (struct mwifiex_adapter*) ;
 int mwifiex_usb_tx_init (struct mwifiex_adapter*) ;

__attribute__((used)) static int mwifiex_usb_dnld_fw(struct mwifiex_adapter *adapter,
   struct mwifiex_fw_image *fw)
{
 int ret;
 struct usb_card_rec *card = (struct usb_card_rec *)adapter->card;

 if (card->usb_boot_state == USB8XXX_FW_DNLD) {
  ret = mwifiex_prog_fw_w_helper(adapter, fw);
  if (ret)
   return -1;


  if (card->usb_boot_state == USB8XXX_FW_DNLD)
   return -1;
 }

 ret = mwifiex_usb_rx_init(adapter);
 if (!ret)
  ret = mwifiex_usb_tx_init(adapter);

 return ret;
}
