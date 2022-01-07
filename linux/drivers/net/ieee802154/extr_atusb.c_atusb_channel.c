
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee802154_hw {struct atusb* priv; } ;
struct atusb {TYPE_1__* data; } ;
struct TYPE_2__ {int (* set_channel ) (struct ieee802154_hw*,int ,int ) ;int t_channel_switch; } ;


 int ENOTSUPP ;
 int msleep (int ) ;
 int stub1 (struct ieee802154_hw*,int ,int ) ;

__attribute__((used)) static int atusb_channel(struct ieee802154_hw *hw, u8 page, u8 channel)
{
 struct atusb *atusb = hw->priv;
 int ret = -ENOTSUPP;

 if (atusb->data) {
  ret = atusb->data->set_channel(hw, page, channel);

  msleep(atusb->data->t_channel_switch);
 }

 return ret;
}
