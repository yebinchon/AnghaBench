
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_rtsym_table {int num; struct nfp_rtsym const* symtab; } ;
struct nfp_rtsym {int name; } ;


 scalar_t__ strcmp (char const*,int ) ;

const struct nfp_rtsym *
nfp_rtsym_lookup(struct nfp_rtsym_table *rtbl, const char *name)
{
 int n;

 if (!rtbl)
  return ((void*)0);

 for (n = 0; n < rtbl->num; n++)
  if (strcmp(name, rtbl->symtab[n].name) == 0)
   return &rtbl->symtab[n];

 return ((void*)0);
}
