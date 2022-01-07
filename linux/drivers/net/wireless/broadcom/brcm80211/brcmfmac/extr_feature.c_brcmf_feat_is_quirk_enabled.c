
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_if {TYPE_1__* drvr; } ;
typedef enum brcmf_feat_quirk { ____Placeholder_brcmf_feat_quirk } brcmf_feat_quirk ;
struct TYPE_2__ {int chip_quirks; } ;


 int BIT (int) ;

bool brcmf_feat_is_quirk_enabled(struct brcmf_if *ifp,
     enum brcmf_feat_quirk quirk)
{
 return (ifp->drvr->chip_quirks & BIT(quirk));
}
