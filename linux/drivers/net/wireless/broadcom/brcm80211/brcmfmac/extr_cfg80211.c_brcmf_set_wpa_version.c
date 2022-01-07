
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int wpa_versions; } ;
struct cfg80211_connect_params {TYPE_1__ crypto; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
struct brcmf_cfg80211_security {int wpa_versions; } ;
struct brcmf_cfg80211_profile {struct brcmf_cfg80211_security sec; } ;
typedef int s32 ;


 int CONN ;
 int NL80211_WPA_VERSION_1 ;
 int NL80211_WPA_VERSION_2 ;
 int WPA2_AUTH_PSK ;
 int WPA2_AUTH_UNSPECIFIED ;
 int WPA_AUTH_DISABLED ;
 int WPA_AUTH_PSK ;
 int WPA_AUTH_UNSPECIFIED ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,int) ;
 int brcmf_fil_bsscfg_int_set (struct brcmf_if*,char*,int) ;
 struct brcmf_cfg80211_profile* ndev_to_prof (struct net_device*) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static s32 brcmf_set_wpa_version(struct net_device *ndev,
     struct cfg80211_connect_params *sme)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_cfg80211_profile *profile = ndev_to_prof(ndev);
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_cfg80211_security *sec;
 s32 val = 0;
 s32 err = 0;

 if (sme->crypto.wpa_versions & NL80211_WPA_VERSION_1)
  val = WPA_AUTH_PSK | WPA_AUTH_UNSPECIFIED;
 else if (sme->crypto.wpa_versions & NL80211_WPA_VERSION_2)
  val = WPA2_AUTH_PSK | WPA2_AUTH_UNSPECIFIED;
 else
  val = WPA_AUTH_DISABLED;
 brcmf_dbg(CONN, "setting wpa_auth to 0x%0x\n", val);
 err = brcmf_fil_bsscfg_int_set(ifp, "wpa_auth", val);
 if (err) {
  bphy_err(drvr, "set wpa_auth failed (%d)\n", err);
  return err;
 }
 sec = &profile->sec;
 sec->wpa_versions = sme->crypto.wpa_versions;
 return err;
}
