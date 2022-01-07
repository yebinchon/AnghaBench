
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int dummy; } ;


 int nfp_nsp_get_abi_ver_minor (struct nfp_nsp*) ;

__attribute__((used)) static inline bool nfp_nsp_has_hwinfo_lookup(struct nfp_nsp *state)
{
 return nfp_nsp_get_abi_ver_minor(state) > 24;
}
