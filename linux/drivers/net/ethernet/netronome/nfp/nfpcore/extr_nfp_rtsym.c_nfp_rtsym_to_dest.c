
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct nfp_rtsym {scalar_t__ type; int addr; scalar_t__ target; int domain; int name; } ;
struct nfp_cpp {int dummy; } ;


 int EINVAL ;
 int NFP_CPP_ISLAND_ID (scalar_t__,int ,int ,int ) ;
 scalar_t__ NFP_CPP_TARGET_MU ;
 int NFP_MU_ADDR_ACCESS_TYPE_DIRECT ;
 int NFP_MU_ADDR_ACCESS_TYPE_MASK ;
 scalar_t__ NFP_RTSYM_TARGET_EMU_CACHE ;
 scalar_t__ NFP_RTSYM_TYPE_OBJECT ;
 int nfp_cpp_mu_locality_lsb (struct nfp_cpp*) ;
 int nfp_err (struct nfp_cpp*,char*,int ,...) ;

__attribute__((used)) static int
nfp_rtsym_to_dest(struct nfp_cpp *cpp, const struct nfp_rtsym *sym,
    u8 action, u8 token, u64 off, u32 *cpp_id, u64 *addr)
{
 if (sym->type != NFP_RTSYM_TYPE_OBJECT) {
  nfp_err(cpp, "rtsym '%s': direct access to non-object rtsym\n",
   sym->name);
  return -EINVAL;
 }

 *addr = sym->addr + off;

 if (sym->target == NFP_RTSYM_TARGET_EMU_CACHE) {
  int locality_off = nfp_cpp_mu_locality_lsb(cpp);

  *addr &= ~(NFP_MU_ADDR_ACCESS_TYPE_MASK << locality_off);
  *addr |= NFP_MU_ADDR_ACCESS_TYPE_DIRECT << locality_off;

  *cpp_id = NFP_CPP_ISLAND_ID(NFP_CPP_TARGET_MU, action, token,
         sym->domain);
 } else if (sym->target < 0) {
  nfp_err(cpp, "rtsym '%s': unhandled target encoding: %d\n",
   sym->name, sym->target);
  return -EINVAL;
 } else {
  *cpp_id = NFP_CPP_ISLAND_ID(sym->target, action, token,
         sym->domain);
 }

 return 0;
}
