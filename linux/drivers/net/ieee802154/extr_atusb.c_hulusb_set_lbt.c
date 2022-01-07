
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct atusb* priv; } ;
struct atusb {int dummy; } ;


 int SR_CSMA_LBT_MODE ;
 int atusb_write_subreg (struct atusb*,int ,int) ;

__attribute__((used)) static int
hulusb_set_lbt(struct ieee802154_hw *hw, bool on)
{
 struct atusb *atusb = hw->priv;

 return atusb_write_subreg(atusb, SR_CSMA_LBT_MODE, on);
}
