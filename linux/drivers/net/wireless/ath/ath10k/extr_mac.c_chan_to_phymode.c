
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_chan_def {int width; TYPE_1__* chan; } ;
typedef enum wmi_phy_mode { ____Placeholder_wmi_phy_mode } wmi_phy_mode ;
struct TYPE_2__ {int band; int flags; } ;


 int IEEE80211_CHAN_NO_OFDM ;
 int MODE_11A ;
 int MODE_11AC_VHT160 ;
 int MODE_11AC_VHT80 ;
 int MODE_11AC_VHT80_80 ;
 int MODE_11B ;
 int MODE_11G ;
 int MODE_11NA_HT20 ;
 int MODE_11NA_HT40 ;
 int MODE_11NG_HT20 ;
 int MODE_11NG_HT40 ;
 int MODE_UNKNOWN ;
 int WARN_ON (int) ;

__attribute__((used)) static inline enum wmi_phy_mode
chan_to_phymode(const struct cfg80211_chan_def *chandef)
{
 enum wmi_phy_mode phymode = MODE_UNKNOWN;

 switch (chandef->chan->band) {
 case 137:
  switch (chandef->width) {
  case 132:
   if (chandef->chan->flags & IEEE80211_CHAN_NO_OFDM)
    phymode = MODE_11B;
   else
    phymode = MODE_11G;
   break;
  case 133:
   phymode = MODE_11NG_HT20;
   break;
  case 131:
   phymode = MODE_11NG_HT40;
   break;
  case 130:
  case 135:
  case 129:
  case 128:
  case 134:
   phymode = MODE_UNKNOWN;
   break;
  }
  break;
 case 136:
  switch (chandef->width) {
  case 132:
   phymode = MODE_11A;
   break;
  case 133:
   phymode = MODE_11NA_HT20;
   break;
  case 131:
   phymode = MODE_11NA_HT40;
   break;
  case 129:
   phymode = MODE_11AC_VHT80;
   break;
  case 134:
   phymode = MODE_11AC_VHT160;
   break;
  case 128:
   phymode = MODE_11AC_VHT80_80;
   break;
  case 130:
  case 135:
   phymode = MODE_UNKNOWN;
   break;
  }
  break;
 default:
  break;
 }

 WARN_ON(phymode == MODE_UNKNOWN);
 return phymode;
}
