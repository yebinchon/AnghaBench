
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int band; scalar_t__ delta; } ;
struct TYPE_4__ {int band_pref; TYPE_1__ adjust; } ;
struct cfg80211_bss_selection {int behaviour; TYPE_2__ param; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_join_pref_params {int len; void* band; scalar_t__ rssi_gain; int type; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef int join_pref_params ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int BRCMF_C_SET_ASSOC_PREFER ;
 int BRCMF_JOIN_PREF_BAND ;
 int BRCMF_JOIN_PREF_RSSI ;
 int BRCMF_JOIN_PREF_RSSI_DELTA ;



 int WLC_BAND_AUTO ;

 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_c_set_joinpref_default (struct brcmf_if*) ;
 int brcmf_fil_cmd_int_set (struct brcmf_if*,int ,int ) ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,struct brcmf_join_pref_params*,int) ;
 void* nl80211_band_to_fwil (int) ;

__attribute__((used)) static void brcmf_set_join_pref(struct brcmf_if *ifp,
    struct cfg80211_bss_selection *bss_select)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_join_pref_params join_pref_params[2];
 enum nl80211_band band;
 int err, i = 0;

 join_pref_params[i].len = 2;
 join_pref_params[i].rssi_gain = 0;

 if (bss_select->behaviour != 131)
  brcmf_fil_cmd_int_set(ifp, BRCMF_C_SET_ASSOC_PREFER, WLC_BAND_AUTO);

 switch (bss_select->behaviour) {
 case 128:
  brcmf_c_set_joinpref_default(ifp);
  return;
 case 131:
  join_pref_params[i].type = BRCMF_JOIN_PREF_BAND;
  band = bss_select->param.band_pref;
  join_pref_params[i].band = nl80211_band_to_fwil(band);
  i++;
  break;
 case 129:
  join_pref_params[i].type = BRCMF_JOIN_PREF_RSSI_DELTA;
  band = bss_select->param.adjust.band;
  join_pref_params[i].band = nl80211_band_to_fwil(band);
  join_pref_params[i].rssi_gain = bss_select->param.adjust.delta;
  i++;
  break;
 case 130:
 default:
  break;
 }
 join_pref_params[i].type = BRCMF_JOIN_PREF_RSSI;
 join_pref_params[i].len = 2;
 join_pref_params[i].rssi_gain = 0;
 join_pref_params[i].band = 0;
 err = brcmf_fil_iovar_data_set(ifp, "join_pref", join_pref_params,
           sizeof(join_pref_params));
 if (err)
  bphy_err(drvr, "Set join_pref error (%d)\n", err);
}
