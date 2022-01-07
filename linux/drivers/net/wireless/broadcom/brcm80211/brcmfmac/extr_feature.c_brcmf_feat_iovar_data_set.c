
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_if {int fwil_fwerr; TYPE_1__* drvr; } ;
typedef enum brcmf_feat_id { ____Placeholder_brcmf_feat_id } brcmf_feat_id ;
struct TYPE_2__ {int feat_flags; } ;


 int BIT (int) ;
 int BRCMF_FW_UNSUPPORTED ;
 int INFO ;
 int TRACE ;
 int brcmf_dbg (int ,char*,int ,...) ;
 int * brcmf_feat_names ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,void const*,size_t) ;

__attribute__((used)) static void brcmf_feat_iovar_data_set(struct brcmf_if *ifp,
          enum brcmf_feat_id id, char *name,
          const void *data, size_t len)
{
 int err;


 ifp->fwil_fwerr = 1;

 err = brcmf_fil_iovar_data_set(ifp, name, data, len);
 if (err != -BRCMF_FW_UNSUPPORTED) {
  brcmf_dbg(INFO, "enabling feature: %s\n", brcmf_feat_names[id]);
  ifp->drvr->feat_flags |= BIT(id);
 } else {
  brcmf_dbg(TRACE, "%s feature check failed: %d\n",
     brcmf_feat_names[id], err);
 }

 ifp->fwil_fwerr = 0;
}
