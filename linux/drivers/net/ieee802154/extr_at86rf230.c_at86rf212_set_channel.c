
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct at86rf230_local {TYPE_3__* hw; TYPE_1__* data; } ;
struct TYPE_6__ {TYPE_2__* phy; } ;
struct TYPE_5__ {int symbol_duration; int lifs_period; int sifs_period; } ;
struct TYPE_4__ {int rssi_base_val; } ;


 int IEEE802154_LIFS_PERIOD ;
 int IEEE802154_SIFS_PERIOD ;
 int SR_BPSK_QPSK ;
 int SR_CHANNEL ;
 int SR_SUB_MODE ;
 int at86rf212_update_cca_ed_level (struct at86rf230_local*,int) ;
 int at86rf230_write_subreg (struct at86rf230_local*,int ,scalar_t__) ;

__attribute__((used)) static int
at86rf212_set_channel(struct at86rf230_local *lp, u8 page, u8 channel)
{
 int rc;

 if (channel == 0)
  rc = at86rf230_write_subreg(lp, SR_SUB_MODE, 0);
 else
  rc = at86rf230_write_subreg(lp, SR_SUB_MODE, 1);
 if (rc < 0)
  return rc;

 if (page == 0) {
  rc = at86rf230_write_subreg(lp, SR_BPSK_QPSK, 0);
  lp->data->rssi_base_val = -100;
 } else {
  rc = at86rf230_write_subreg(lp, SR_BPSK_QPSK, 1);
  lp->data->rssi_base_val = -98;
 }
 if (rc < 0)
  return rc;

 rc = at86rf212_update_cca_ed_level(lp, lp->data->rssi_base_val);
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

 return at86rf230_write_subreg(lp, SR_CHANNEL, channel);
}
