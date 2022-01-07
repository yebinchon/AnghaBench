
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;


 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,int *,int ) ;
 int brcmf_fil_iovar_int_set (struct brcmf_if*,char*,int ) ;

__attribute__((used)) static int brcmf_pno_clean(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 int ret;


 ret = brcmf_fil_iovar_int_set(ifp, "pfn", 0);
 if (ret == 0) {

  ret = brcmf_fil_iovar_data_set(ifp, "pfnclear", ((void*)0), 0);
 }
 if (ret < 0)
  bphy_err(drvr, "failed code %d\n", ret);

 return ret;
}
