
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nffw_info {int fwinf; } ;
struct nffw_fwinfo {int dummy; } ;


 scalar_t__ nffw_fwinfo_loaded_get (struct nffw_fwinfo*) ;
 unsigned int nffw_res_fwinfos (int *,struct nffw_fwinfo**) ;

__attribute__((used)) static struct nffw_fwinfo *nfp_nffw_info_fwid_first(struct nfp_nffw_info *state)
{
 struct nffw_fwinfo *fwinfo;
 unsigned int cnt, i;

 cnt = nffw_res_fwinfos(&state->fwinf, &fwinfo);
 if (!cnt)
  return ((void*)0);

 for (i = 0; i < cnt; i++)
  if (nffw_fwinfo_loaded_get(&fwinfo[i]))
   return &fwinfo[i];

 return ((void*)0);
}
