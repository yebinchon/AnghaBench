
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct nffw_fwinfo* fwinfo; } ;
struct TYPE_4__ {struct nffw_fwinfo* fwinfo; } ;
struct TYPE_6__ {TYPE_2__ v2; TYPE_1__ v1; } ;
struct nfp_nffw_info_data {TYPE_3__ info; } ;
struct nffw_fwinfo {int dummy; } ;


 unsigned int NFFW_FWINFO_CNT_V1 ;
 unsigned int NFFW_FWINFO_CNT_V2 ;
 int nffw_res_info_version_get (struct nfp_nffw_info_data*) ;

__attribute__((used)) static unsigned int
nffw_res_fwinfos(struct nfp_nffw_info_data *fwinf, struct nffw_fwinfo **arr)
{







 switch (nffw_res_info_version_get(fwinf)) {
 case 0:
 case 1:
  *arr = &fwinf->info.v1.fwinfo[0];
  return NFFW_FWINFO_CNT_V1;
 case 2:
  *arr = &fwinf->info.v2.fwinfo[0];
  return NFFW_FWINFO_CNT_V2;
 default:
  *arr = ((void*)0);
  return 0;
 }
}
