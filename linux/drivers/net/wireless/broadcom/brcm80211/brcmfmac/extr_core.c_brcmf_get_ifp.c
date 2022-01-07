
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {size_t* if2bss; struct brcmf_if** iflist; } ;
struct brcmf_if {int dummy; } ;
typedef size_t s32 ;


 int BRCMF_MAX_IFS ;
 int bphy_err (struct brcmf_pub*,char*,int) ;

struct brcmf_if *brcmf_get_ifp(struct brcmf_pub *drvr, int ifidx)
{
 struct brcmf_if *ifp;
 s32 bsscfgidx;

 if (ifidx < 0 || ifidx >= BRCMF_MAX_IFS) {
  bphy_err(drvr, "ifidx %d out of range\n", ifidx);
  return ((void*)0);
 }

 ifp = ((void*)0);
 bsscfgidx = drvr->if2bss[ifidx];
 if (bsscfgidx >= 0)
  ifp = drvr->iflist[bsscfgidx];

 return ifp;
}
