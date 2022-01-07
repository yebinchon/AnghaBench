
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int dummy; } ;


 int nfp_pf_rtsym_read_optional (struct nfp_pf*,char*,int) ;

__attribute__((used)) static int nfp_net_pf_get_num_ports(struct nfp_pf *pf)
{
 return nfp_pf_rtsym_read_optional(pf, "nfd_cfg_pf%u_num_ports", 1);
}
