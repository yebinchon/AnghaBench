
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;


 int INFO ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int WARN_ON (int) ;
 int WLC_BAND_2G ;
 int WLC_BAND_5G ;
 int WLC_BW_20MHZ_BIT ;
 int WLC_BW_40MHZ_BIT ;



 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_fil_iovar_int_get (struct brcmf_if*,char*,int*) ;

__attribute__((used)) static void brcmf_get_bwcap(struct brcmf_if *ifp, u32 bw_cap[])
{
 struct brcmf_pub *drvr = ifp->drvr;
 u32 band, mimo_bwcap;
 int err;

 band = WLC_BAND_2G;
 err = brcmf_fil_iovar_int_get(ifp, "bw_cap", &band);
 if (!err) {
  bw_cap[NL80211_BAND_2GHZ] = band;
  band = WLC_BAND_5G;
  err = brcmf_fil_iovar_int_get(ifp, "bw_cap", &band);
  if (!err) {
   bw_cap[NL80211_BAND_5GHZ] = band;
   return;
  }
  WARN_ON(1);
  return;
 }
 brcmf_dbg(INFO, "fallback to mimo_bw_cap info\n");
 mimo_bwcap = 0;
 err = brcmf_fil_iovar_int_get(ifp, "mimo_bw_cap", &mimo_bwcap);
 if (err)

  mimo_bwcap = 130;

 switch (mimo_bwcap) {
 case 128:
  bw_cap[NL80211_BAND_2GHZ] |= WLC_BW_40MHZ_BIT;

 case 129:
  bw_cap[NL80211_BAND_5GHZ] |= WLC_BW_40MHZ_BIT;

 case 130:
  bw_cap[NL80211_BAND_2GHZ] |= WLC_BW_20MHZ_BIT;
  bw_cap[NL80211_BAND_5GHZ] |= WLC_BW_20MHZ_BIT;
  break;
 default:
  bphy_err(drvr, "invalid mimo_bw_cap value\n");
 }
}
