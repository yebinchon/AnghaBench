
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int dummy; } ;
struct brcmf_mbss_ssid_le {int SSID; void* SSID_len; void* bsscfgidx; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef int mbss_ssid_le ;


 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_fil_bsscfg_data_set (struct brcmf_if*,char*,struct brcmf_mbss_ssid_le*,int) ;
 int brcmf_get_first_free_bsscfgidx (struct brcmf_pub*) ;
 void* cpu_to_le32 (int) ;
 int memset (struct brcmf_mbss_ssid_le*,int ,int) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int brcmf_cfg80211_request_ap_if(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_mbss_ssid_le mbss_ssid_le;
 int bsscfgidx;
 int err;

 memset(&mbss_ssid_le, 0, sizeof(mbss_ssid_le));
 bsscfgidx = brcmf_get_first_free_bsscfgidx(ifp->drvr);
 if (bsscfgidx < 0)
  return bsscfgidx;

 mbss_ssid_le.bsscfgidx = cpu_to_le32(bsscfgidx);
 mbss_ssid_le.SSID_len = cpu_to_le32(5);
 sprintf(mbss_ssid_le.SSID, "ssid%d" , bsscfgidx);

 err = brcmf_fil_bsscfg_data_set(ifp, "bsscfg:ssid", &mbss_ssid_le,
     sizeof(mbss_ssid_le));
 if (err < 0)
  bphy_err(drvr, "setting ssid failed %d\n", err);

 return err;
}
