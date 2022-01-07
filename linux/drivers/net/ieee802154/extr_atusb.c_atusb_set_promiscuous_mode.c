
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct atusb* priv; } ;
struct atusb {int dummy; } ;


 int SR_AACK_DIS_ACK ;
 int SR_AACK_PROM_MODE ;
 int atusb_write_subreg (struct atusb*,int ,int) ;

__attribute__((used)) static int
atusb_set_promiscuous_mode(struct ieee802154_hw *hw, const bool on)
{
 struct atusb *atusb = hw->priv;
 int ret;

 if (on) {
  ret = atusb_write_subreg(atusb, SR_AACK_DIS_ACK, 1);
  if (ret < 0)
   return ret;

  ret = atusb_write_subreg(atusb, SR_AACK_PROM_MODE, 1);
  if (ret < 0)
   return ret;
 } else {
  ret = atusb_write_subreg(atusb, SR_AACK_PROM_MODE, 0);
  if (ret < 0)
   return ret;

  ret = atusb_write_subreg(atusb, SR_AACK_DIS_ACK, 0);
  if (ret < 0)
   return ret;
 }

 return 0;
}
