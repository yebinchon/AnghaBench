
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct brcmf_pub {int feat_flags; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef enum brcmf_feat_id { ____Placeholder_brcmf_feat_id } brcmf_feat_id ;
typedef int caps ;
struct TYPE_3__ {int feature; int fwcap_id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BIT (int) ;
 int INFO ;
 int MAX_CAPS_BUFFER_SIZE ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,char*) ;
 char** brcmf_feat_names ;
 int brcmf_fil_iovar_data_get (struct brcmf_if*,char*,char*,int) ;
 TYPE_1__* brcmf_fwcap_map ;
 scalar_t__ strnstr (char*,int ,int) ;

__attribute__((used)) static void brcmf_feat_firmware_capabilities(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 char caps[MAX_CAPS_BUFFER_SIZE];
 enum brcmf_feat_id id;
 int i, err;

 err = brcmf_fil_iovar_data_get(ifp, "cap", caps, sizeof(caps));
 if (err) {
  bphy_err(drvr, "could not get firmware cap (%d)\n", err);
  return;
 }

 brcmf_dbg(INFO, "[ %s]\n", caps);

 for (i = 0; i < ARRAY_SIZE(brcmf_fwcap_map); i++) {
  if (strnstr(caps, brcmf_fwcap_map[i].fwcap_id, sizeof(caps))) {
   id = brcmf_fwcap_map[i].feature;
   brcmf_dbg(INFO, "enabling feature: %s\n",
      brcmf_feat_names[id]);
   ifp->drvr->feat_flags |= BIT(id);
  }
 }
}
