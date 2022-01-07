
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usb_card_rec {int udev; } ;
struct mwifiex_adapter {struct usb_card_rec* card; } ;


 int ERROR ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int) ;
 int usb_bulk_msg (int ,int ,int *,int,int*,int) ;
 int usb_rcvbulkpipe (int ,int ) ;

__attribute__((used)) static int mwifiex_read_data_sync(struct mwifiex_adapter *adapter, u8 *pbuf,
      u32 *len, u8 ep, u32 timeout)
{
 struct usb_card_rec *card = adapter->card;
 int actual_length, ret;


 ret = usb_bulk_msg(card->udev, usb_rcvbulkpipe(card->udev, ep), pbuf,
      *len, &actual_length, timeout);
 if (ret) {
  mwifiex_dbg(adapter, ERROR,
       "usb_bulk_msg for rx failed: %d\n", ret);
  return ret;
 }

 *len = actual_length;

 return ret;
}
