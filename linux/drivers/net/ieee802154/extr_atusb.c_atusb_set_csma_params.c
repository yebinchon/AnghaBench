
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802154_hw {struct atusb* priv; } ;
struct atusb {int dummy; } ;


 int SR_MAX_BE ;
 int SR_MAX_CSMA_RETRIES ;
 int SR_MIN_BE ;
 int atusb_write_subreg (struct atusb*,int ,int ) ;

__attribute__((used)) static int
atusb_set_csma_params(struct ieee802154_hw *hw, u8 min_be, u8 max_be, u8 retries)
{
 struct atusb *atusb = hw->priv;
 int ret;

 ret = atusb_write_subreg(atusb, SR_MIN_BE, min_be);
 if (ret)
  return ret;

 ret = atusb_write_subreg(atusb, SR_MAX_BE, max_be);
 if (ret)
  return ret;

 return atusb_write_subreg(atusb, SR_MAX_CSMA_RETRIES, retries);
}
