
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_card_rec {TYPE_2__* udev; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int ext_scan; int usb_mc_status; int usb_mc_setup; int fw_name; void* tx_buf_size; scalar_t__ card; } ;
struct TYPE_3__ {int idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;


 void* MWIFIEX_TX_DATA_BUF_SIZE_2K ;
 void* MWIFIEX_TX_DATA_BUF_SIZE_4K ;
 int USB8766_DEFAULT_FW_NAME ;


 int USB8797_DEFAULT_FW_NAME ;


 int USB8801_DEFAULT_FW_NAME ;


 int USB8997_DEFAULT_FW_NAME ;


 int le16_to_cpu (int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int mwifiex_register_dev(struct mwifiex_adapter *adapter)
{
 struct usb_card_rec *card = (struct usb_card_rec *)adapter->card;

 card->adapter = adapter;

 switch (le16_to_cpu(card->udev->descriptor.idProduct)) {
 case 129:
 case 128:
  adapter->tx_buf_size = MWIFIEX_TX_DATA_BUF_SIZE_4K;
  strcpy(adapter->fw_name, USB8997_DEFAULT_FW_NAME);
  adapter->ext_scan = 1;
  break;
 case 135:
 case 134:
  adapter->tx_buf_size = MWIFIEX_TX_DATA_BUF_SIZE_2K;
  strcpy(adapter->fw_name, USB8766_DEFAULT_FW_NAME);
  adapter->ext_scan = 1;
  break;
 case 131:
 case 130:
  adapter->tx_buf_size = MWIFIEX_TX_DATA_BUF_SIZE_2K;
  strcpy(adapter->fw_name, USB8801_DEFAULT_FW_NAME);
  adapter->ext_scan = 0;
  break;
 case 133:
 case 132:
 default:
  adapter->tx_buf_size = MWIFIEX_TX_DATA_BUF_SIZE_2K;
  strcpy(adapter->fw_name, USB8797_DEFAULT_FW_NAME);
  break;
 }

 adapter->usb_mc_status = 0;
 adapter->usb_mc_setup = 0;

 return 0;
}
