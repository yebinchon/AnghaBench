
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpan_phy_cca {int mode; int opt; } ;
struct ieee802154_hw {struct atusb* priv; } ;
struct atusb {int dummy; } ;


 int EINVAL ;





 int SR_CCA_MODE ;
 int atusb_write_subreg (struct atusb*,int ,int) ;

__attribute__((used)) static int
atusb_set_cca_mode(struct ieee802154_hw *hw, const struct wpan_phy_cca *cca)
{
 struct atusb *atusb = hw->priv;
 u8 val;


 switch (cca->mode) {
 case 131:
  val = 1;
  break;
 case 132:
  val = 2;
  break;
 case 130:
  switch (cca->opt) {
  case 129:
   val = 3;
   break;
  case 128:
   val = 0;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return atusb_write_subreg(atusb, SR_CCA_MODE, val);
}
