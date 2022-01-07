
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int* ciphers_pairwise; int cipher_group; scalar_t__ n_ciphers_pairwise; } ;
struct cfg80211_connect_params {TYPE_1__ crypto; scalar_t__ privacy; int ie_len; int ie; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
struct brcmf_cfg80211_security {int cipher_pairwise; int cipher_group; } ;
struct brcmf_cfg80211_profile {struct brcmf_cfg80211_security sec; } ;
typedef int s32 ;


 int AES_ENABLED ;
 int CONN ;
 int EINVAL ;
 int TKIP_ENABLED ;
 int WEP_ENABLED ;





 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,int,int) ;
 int brcmf_fil_bsscfg_int_set (struct brcmf_if*,char*,int) ;
 scalar_t__ brcmf_find_wpsie (int ,int ) ;
 struct brcmf_cfg80211_profile* ndev_to_prof (struct net_device*) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static s32
brcmf_set_wsec_mode(struct net_device *ndev,
      struct cfg80211_connect_params *sme)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_cfg80211_profile *profile = ndev_to_prof(ndev);
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_cfg80211_security *sec;
 s32 pval = 0;
 s32 gval = 0;
 s32 wsec;
 s32 err = 0;

 if (sme->crypto.n_ciphers_pairwise) {
  switch (sme->crypto.ciphers_pairwise[0]) {
  case 128:
  case 129:
   pval = WEP_ENABLED;
   break;
  case 130:
   pval = TKIP_ENABLED;
   break;
  case 131:
   pval = AES_ENABLED;
   break;
  case 132:
   pval = AES_ENABLED;
   break;
  default:
   bphy_err(drvr, "invalid cipher pairwise (%d)\n",
     sme->crypto.ciphers_pairwise[0]);
   return -EINVAL;
  }
 }
 if (sme->crypto.cipher_group) {
  switch (sme->crypto.cipher_group) {
  case 128:
  case 129:
   gval = WEP_ENABLED;
   break;
  case 130:
   gval = TKIP_ENABLED;
   break;
  case 131:
   gval = AES_ENABLED;
   break;
  case 132:
   gval = AES_ENABLED;
   break;
  default:
   bphy_err(drvr, "invalid cipher group (%d)\n",
     sme->crypto.cipher_group);
   return -EINVAL;
  }
 }

 brcmf_dbg(CONN, "pval (%d) gval (%d)\n", pval, gval);


 if (brcmf_find_wpsie(sme->ie, sme->ie_len) && !pval && !gval &&
     sme->privacy)
  pval = AES_ENABLED;

 wsec = pval | gval;
 err = brcmf_fil_bsscfg_int_set(ifp, "wsec", wsec);
 if (err) {
  bphy_err(drvr, "error (%d)\n", err);
  return err;
 }

 sec = &profile->sec;
 sec->cipher_pairwise = sme->crypto.ciphers_pairwise[0];
 sec->cipher_group = sme->crypto.cipher_group;

 return err;
}
