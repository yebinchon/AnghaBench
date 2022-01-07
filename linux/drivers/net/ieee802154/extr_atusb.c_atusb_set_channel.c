
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802154_hw {struct atusb* priv; } ;
struct atusb {int dummy; } ;


 int SR_CHANNEL ;
 int atusb_write_subreg (struct atusb*,int ,int ) ;

__attribute__((used)) static int atusb_set_channel(struct ieee802154_hw *hw, u8 page, u8 channel)
{
 struct atusb *atusb = hw->priv;
 int ret;

 ret = atusb_write_subreg(atusb, SR_CHANNEL, channel);
 if (ret < 0)
  return ret;
 return 0;
}
