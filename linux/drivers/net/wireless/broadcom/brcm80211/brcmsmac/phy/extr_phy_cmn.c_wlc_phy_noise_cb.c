
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct brcms_phy {int phynoise_state; scalar_t__ phynoise_chan_watchdog; TYPE_1__* sh; } ;
typedef int s8 ;
struct TYPE_2__ {size_t phy_noise_index; int * phy_noise_window; } ;


 int MA_WINDOW_SZ ;
 size_t MODINC (size_t,int ) ;
 int PHY_NOISE_STATE_EXTERNAL ;
 int PHY_NOISE_STATE_MON ;

__attribute__((used)) static void wlc_phy_noise_cb(struct brcms_phy *pi, u8 channel, s8 noise_dbm)
{
 if (!pi->phynoise_state)
  return;

 if (pi->phynoise_state & PHY_NOISE_STATE_MON) {
  if (pi->phynoise_chan_watchdog == channel) {
   pi->sh->phy_noise_window[pi->sh->phy_noise_index] =
    noise_dbm;
   pi->sh->phy_noise_index =
    MODINC(pi->sh->phy_noise_index, MA_WINDOW_SZ);
  }
  pi->phynoise_state &= ~PHY_NOISE_STATE_MON;
 }

 if (pi->phynoise_state & PHY_NOISE_STATE_EXTERNAL)
  pi->phynoise_state &= ~PHY_NOISE_STATE_EXTERNAL;

}
