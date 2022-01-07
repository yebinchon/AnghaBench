
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int * iflist; } ;


 int BRCMF_MAX_IFS ;
 int ENOMEM ;

__attribute__((used)) static int brcmf_get_first_free_bsscfgidx(struct brcmf_pub *drvr)
{
 int bsscfgidx;

 for (bsscfgidx = 0; bsscfgidx < BRCMF_MAX_IFS; bsscfgidx++) {

  if (bsscfgidx == 1)
   continue;
  if (!drvr->iflist[bsscfgidx])
   return bsscfgidx;
 }

 return -ENOMEM;
}
