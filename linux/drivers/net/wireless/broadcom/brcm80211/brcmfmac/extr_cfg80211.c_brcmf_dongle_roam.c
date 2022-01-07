
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct brcmf_pub {TYPE_1__* settings; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef scalar_t__ s32 ;
typedef int roamtrigger ;
typedef int roam_delta ;
typedef int __le32 ;
struct TYPE_2__ {scalar_t__ roamoff; } ;


 int BRCMF_C_SET_ROAM_DELTA ;
 int BRCMF_C_SET_ROAM_TRIGGER ;
 scalar_t__ BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_OFF ;
 scalar_t__ BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_ON ;
 int BRCM_BAND_ALL ;
 int INFO ;
 int WL_ROAM_DELTA ;
 int WL_ROAM_TRIGGER_LEVEL ;
 int bphy_err (struct brcmf_pub*,char*,scalar_t__) ;
 int brcmf_dbg (int ,char*,char*) ;
 scalar_t__ brcmf_fil_cmd_data_set (struct brcmf_if*,int ,void*,int) ;
 scalar_t__ brcmf_fil_iovar_int_set (struct brcmf_if*,char*,scalar_t__) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static s32 brcmf_dongle_roam(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 s32 err;
 u32 bcn_timeout;
 __le32 roamtrigger[2];
 __le32 roam_delta[2];


 if (ifp->drvr->settings->roamoff)
  bcn_timeout = BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_OFF;
 else
  bcn_timeout = BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_ON;
 err = brcmf_fil_iovar_int_set(ifp, "bcn_timeout", bcn_timeout);
 if (err) {
  bphy_err(drvr, "bcn_timeout error (%d)\n", err);
  goto roam_setup_done;
 }




 brcmf_dbg(INFO, "Internal Roaming = %s\n",
    ifp->drvr->settings->roamoff ? "Off" : "On");
 err = brcmf_fil_iovar_int_set(ifp, "roam_off",
          ifp->drvr->settings->roamoff);
 if (err) {
  bphy_err(drvr, "roam_off error (%d)\n", err);
  goto roam_setup_done;
 }

 roamtrigger[0] = cpu_to_le32(WL_ROAM_TRIGGER_LEVEL);
 roamtrigger[1] = cpu_to_le32(BRCM_BAND_ALL);
 err = brcmf_fil_cmd_data_set(ifp, BRCMF_C_SET_ROAM_TRIGGER,
         (void *)roamtrigger, sizeof(roamtrigger));
 if (err) {
  bphy_err(drvr, "WLC_SET_ROAM_TRIGGER error (%d)\n", err);
  goto roam_setup_done;
 }

 roam_delta[0] = cpu_to_le32(WL_ROAM_DELTA);
 roam_delta[1] = cpu_to_le32(BRCM_BAND_ALL);
 err = brcmf_fil_cmd_data_set(ifp, BRCMF_C_SET_ROAM_DELTA,
         (void *)roam_delta, sizeof(roam_delta));
 if (err) {
  bphy_err(drvr, "WLC_SET_ROAM_DELTA error (%d)\n", err);
  goto roam_setup_done;
 }

roam_setup_done:
 return err;
}
