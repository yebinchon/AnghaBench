
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp_rtsym {int type; int size; int name; } ;






 int pr_err (char*,int ) ;
 int pr_warn (char*,int ,int) ;

u64 nfp_rtsym_size(const struct nfp_rtsym *sym)
{
 switch (sym->type) {
 case 129:
  pr_err("rtsym '%s': type NONE\n", sym->name);
  return 0;
 default:
  pr_warn("rtsym '%s': unknown type: %d\n", sym->name, sym->type);

 case 128:
 case 130:
  return sym->size;
 case 131:
  return sizeof(u64);
 }
}
