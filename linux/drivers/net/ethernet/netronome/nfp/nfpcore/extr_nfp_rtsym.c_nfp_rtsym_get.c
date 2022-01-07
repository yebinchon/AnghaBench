
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_rtsym_table {int num; struct nfp_rtsym const* symtab; } ;
struct nfp_rtsym {int dummy; } ;



const struct nfp_rtsym *nfp_rtsym_get(struct nfp_rtsym_table *rtbl, int idx)
{
 if (!rtbl)
  return ((void*)0);
 if (idx >= rtbl->num)
  return ((void*)0);

 return &rtbl->symtab[idx];
}
