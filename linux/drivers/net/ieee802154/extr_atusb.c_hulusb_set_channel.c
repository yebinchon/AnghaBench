
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ieee802154_hw {struct atusb* priv; } ;
struct atusb {TYPE_2__* hw; } ;
struct TYPE_4__ {TYPE_1__* phy; } ;
struct TYPE_3__ {int symbol_duration; int lifs_period; int sifs_period; } ;


 int IEEE802154_LIFS_PERIOD ;
 int IEEE802154_SIFS_PERIOD ;
 int SR_BPSK_QPSK ;
 int SR_CHANNEL ;
 int SR_SUB_MODE ;
 int atusb_write_subreg (struct atusb*,int ,scalar_t__) ;
 int hulusb_set_cca_ed_level (struct atusb*,int) ;

__attribute__((used)) static int hulusb_set_channel(struct ieee802154_hw *hw, u8 page, u8 channel)
{
 int rc;
 int rssi_base_val;

 struct atusb *lp = hw->priv;

 if (channel == 0)
  rc = atusb_write_subreg(lp, SR_SUB_MODE, 0);
 else
  rc = atusb_write_subreg(lp, SR_SUB_MODE, 1);
 if (rc < 0)
  return rc;

 if (page == 0) {
  rc = atusb_write_subreg(lp, SR_BPSK_QPSK, 0);
  rssi_base_val = -100;
 } else {
  rc = atusb_write_subreg(lp, SR_BPSK_QPSK, 1);
  rssi_base_val = -98;
 }
 if (rc < 0)
  return rc;

 rc = hulusb_set_cca_ed_level(lp, rssi_base_val);
 if (rc < 0)
  return rc;
 if (channel == 0) {
  if (page == 0) {

   lp->hw->phy->symbol_duration = 50;
  } else {

   lp->hw->phy->symbol_duration = 25;
  }
 } else {
  if (page == 0)

   lp->hw->phy->symbol_duration = 40;
  else

   lp->hw->phy->symbol_duration = 16;
 }

 lp->hw->phy->lifs_period = IEEE802154_LIFS_PERIOD *
       lp->hw->phy->symbol_duration;
 lp->hw->phy->sifs_period = IEEE802154_SIFS_PERIOD *
       lp->hw->phy->symbol_duration;

 return atusb_write_subreg(lp, SR_CHANNEL, channel);
}
