
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct regulatory_request {char* alpha2; int initiator; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int drvr; } ;
struct brcmf_fil_country_le {int dummy; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;
typedef char s32 ;
typedef int ccreq ;


 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 int brcmf_dbg (int ,char*,int ,char,char) ;
 char brcmf_fil_iovar_data_get (struct brcmf_if*,char*,struct brcmf_fil_country_le*,int) ;
 char brcmf_fil_iovar_data_set (struct brcmf_if*,char*,struct brcmf_fil_country_le*,int) ;
 struct brcmf_if* brcmf_get_ifp (struct brcmf_pub*,int ) ;
 int brcmf_setup_wiphybands (struct brcmf_cfg80211_info*) ;
 char brcmf_translate_country_code (int ,char*,struct brcmf_fil_country_le*) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static void brcmf_cfg80211_reg_notifier(struct wiphy *wiphy,
     struct regulatory_request *req)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_if *ifp = brcmf_get_ifp(cfg->pub, 0);
 struct brcmf_pub *drvr = cfg->pub;
 struct brcmf_fil_country_le ccreq;
 s32 err;
 int i;


 if (req->alpha2[0] == '0' && req->alpha2[1] == '0')
  return;


 for (i = 0; i < 2; i++)
  if (req->alpha2[i] < 'A' || req->alpha2[i] > 'Z') {
   bphy_err(drvr, "not an ISO3166 code (0x%02x 0x%02x)\n",
     req->alpha2[0], req->alpha2[1]);
   return;
  }

 brcmf_dbg(TRACE, "Enter: initiator=%d, alpha=%c%c\n", req->initiator,
    req->alpha2[0], req->alpha2[1]);

 err = brcmf_fil_iovar_data_get(ifp, "country", &ccreq, sizeof(ccreq));
 if (err) {
  bphy_err(drvr, "Country code iovar returned err = %d\n", err);
  return;
 }

 err = brcmf_translate_country_code(ifp->drvr, req->alpha2, &ccreq);
 if (err)
  return;

 err = brcmf_fil_iovar_data_set(ifp, "country", &ccreq, sizeof(ccreq));
 if (err) {
  bphy_err(drvr, "Firmware rejected country setting\n");
  return;
 }
 brcmf_setup_wiphybands(cfg);
}
