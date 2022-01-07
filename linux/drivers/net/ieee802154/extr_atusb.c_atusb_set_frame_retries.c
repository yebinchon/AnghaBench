
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct atusb* priv; } ;
struct atusb {int dummy; } ;
typedef int s8 ;


 int SR_MAX_FRAME_RETRIES ;
 int atusb_write_subreg (struct atusb*,int ,int ) ;

__attribute__((used)) static int
atusb_set_frame_retries(struct ieee802154_hw *hw, s8 retries)
{
 struct atusb *atusb = hw->priv;

 return atusb_write_subreg(atusb, SR_MAX_FRAME_RETRIES, retries);
}
