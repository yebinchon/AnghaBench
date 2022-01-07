
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct nfp_rtsym {int name; } ;
struct nfp_cpp {int dummy; } ;


 int ENXIO ;
 int nfp_cpp_readl (struct nfp_cpp*,int ,scalar_t__,int *) ;
 int nfp_err (struct nfp_cpp*,char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ nfp_rtsym_size (struct nfp_rtsym const*) ;
 int nfp_rtsym_to_dest (struct nfp_cpp*,struct nfp_rtsym const*,int ,int ,scalar_t__,int *,scalar_t__*) ;

int __nfp_rtsym_readl(struct nfp_cpp *cpp, const struct nfp_rtsym *sym,
        u8 action, u8 token, u64 off, u32 *value)
{
 u32 cpp_id;
 u64 addr;
 int err;

 if (off + 4 > nfp_rtsym_size(sym)) {
  nfp_err(cpp, "rtsym '%s': readl out of bounds: off: %lld + 4 > size: %lld\n",
   sym->name, off, nfp_rtsym_size(sym));
  return -ENXIO;
 }

 err = nfp_rtsym_to_dest(cpp, sym, action, token, off, &cpp_id, &addr);
 if (err)
  return err;

 return nfp_cpp_readl(cpp, cpp_id, addr, value);
}
