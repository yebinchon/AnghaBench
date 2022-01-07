
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_pf {TYPE_1__* pdev; int cpp; } ;
struct nfp_nsp {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_ERR (struct nfp_nsp*) ;
 int PTR_ERR (struct nfp_nsp*) ;
 int dev_err (int *,char*,int) ;
 int nfp_nsp_close (struct nfp_nsp*) ;
 scalar_t__ nfp_nsp_has_hwinfo_lookup (struct nfp_nsp*) ;
 scalar_t__ nfp_nsp_has_hwinfo_set (struct nfp_nsp*) ;
 struct nfp_nsp* nfp_nsp_open (int ) ;

__attribute__((used)) static int nfp_devlink_supports_params(struct nfp_pf *pf)
{
 struct nfp_nsp *nsp;
 bool supported;
 int err;

 nsp = nfp_nsp_open(pf->cpp);
 if (IS_ERR(nsp)) {
  err = PTR_ERR(nsp);
  dev_err(&pf->pdev->dev, "Failed to access the NSP: %d\n", err);
  return err;
 }

 supported = nfp_nsp_has_hwinfo_lookup(nsp) &&
      nfp_nsp_has_hwinfo_set(nsp);

 nfp_nsp_close(nsp);
 return supported;
}
