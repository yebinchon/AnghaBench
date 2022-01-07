
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int dummy; } ;
struct brcmf_join_pref_params {int len; scalar_t__ band; scalar_t__ rssi_gain; int type; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef int join_pref_params ;


 int BRCMF_JOIN_PREF_RSSI ;
 scalar_t__ BRCMF_JOIN_PREF_RSSI_BOOST ;
 int BRCMF_JOIN_PREF_RSSI_DELTA ;
 scalar_t__ WLC_BAND_5G ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,struct brcmf_join_pref_params*,int) ;

void brcmf_c_set_joinpref_default(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_join_pref_params join_pref_params[2];
 int err;


 join_pref_params[0].type = BRCMF_JOIN_PREF_RSSI_DELTA;
 join_pref_params[0].len = 2;
 join_pref_params[0].rssi_gain = BRCMF_JOIN_PREF_RSSI_BOOST;
 join_pref_params[0].band = WLC_BAND_5G;

 join_pref_params[1].type = BRCMF_JOIN_PREF_RSSI;
 join_pref_params[1].len = 2;
 join_pref_params[1].rssi_gain = 0;
 join_pref_params[1].band = 0;
 err = brcmf_fil_iovar_data_set(ifp, "join_pref", join_pref_params,
           sizeof(join_pref_params));
 if (err)
  bphy_err(drvr, "Set join_pref error (%d)\n", err);
}
