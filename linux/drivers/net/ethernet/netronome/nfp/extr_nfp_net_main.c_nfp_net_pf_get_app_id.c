
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int dummy; } ;


 int NFP_APP_CORE_NIC ;
 int nfp_pf_rtsym_read_optional (struct nfp_pf*,char*,int ) ;

__attribute__((used)) static int nfp_net_pf_get_app_id(struct nfp_pf *pf)
{
 return nfp_pf_rtsym_read_optional(pf, "_pf%u_net_app_id",
       NFP_APP_CORE_NIC);
}
