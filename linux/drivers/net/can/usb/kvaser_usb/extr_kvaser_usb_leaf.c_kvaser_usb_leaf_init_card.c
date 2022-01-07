
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvaser_usb_dev_card_data {int ctrlmode_supported; } ;
struct kvaser_usb {int * cfg; struct kvaser_usb_dev_card_data card_data; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int kvaser_usb_leaf_dev_cfg ;

__attribute__((used)) static int kvaser_usb_leaf_init_card(struct kvaser_usb *dev)
{
 struct kvaser_usb_dev_card_data *card_data = &dev->card_data;

 dev->cfg = &kvaser_usb_leaf_dev_cfg;
 card_data->ctrlmode_supported |= CAN_CTRLMODE_3_SAMPLES;

 return 0;
}
