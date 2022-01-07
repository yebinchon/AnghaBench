
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp_rtsym_table {int cpp; } ;
struct nfp_rtsym {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int nfp_err (int ,char*,char const*,int) ;
 struct nfp_rtsym* nfp_rtsym_lookup (struct nfp_rtsym_table*,char const*) ;
 int nfp_rtsym_size (struct nfp_rtsym const*) ;
 int nfp_rtsym_writel (int ,struct nfp_rtsym const*,int ,int ) ;
 int nfp_rtsym_writeq (int ,struct nfp_rtsym const*,int ,int ) ;

int nfp_rtsym_write_le(struct nfp_rtsym_table *rtbl, const char *name,
         u64 value)
{
 const struct nfp_rtsym *sym;
 int err;

 sym = nfp_rtsym_lookup(rtbl, name);
 if (!sym)
  return -ENOENT;

 switch (nfp_rtsym_size(sym)) {
 case 4:
  err = nfp_rtsym_writel(rtbl->cpp, sym, 0, value);
  break;
 case 8:
  err = nfp_rtsym_writeq(rtbl->cpp, sym, 0, value);
  break;
 default:
  nfp_err(rtbl->cpp,
   "rtsym '%s': unsupported or non-scalar size: %lld\n",
   name, nfp_rtsym_size(sym));
  err = -EINVAL;
  break;
 }

 return err;
}
