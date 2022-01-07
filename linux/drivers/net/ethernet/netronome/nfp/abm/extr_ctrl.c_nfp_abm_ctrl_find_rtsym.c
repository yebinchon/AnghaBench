
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_rtsym {int dummy; } ;
struct nfp_pf {int cpp; int rtbl; } ;


 int EINVAL ;
 int ENOENT ;
 struct nfp_rtsym const* ERR_PTR (int ) ;
 int nfp_err (int ,char*,char const*,...) ;
 struct nfp_rtsym* nfp_rtsym_lookup (int ,char const*) ;
 unsigned int nfp_rtsym_size (struct nfp_rtsym const*) ;

__attribute__((used)) static const struct nfp_rtsym *
nfp_abm_ctrl_find_rtsym(struct nfp_pf *pf, const char *name, unsigned int size)
{
 const struct nfp_rtsym *sym;

 sym = nfp_rtsym_lookup(pf->rtbl, name);
 if (!sym) {
  nfp_err(pf->cpp, "Symbol '%s' not found\n", name);
  return ERR_PTR(-ENOENT);
 }
 if (nfp_rtsym_size(sym) != size) {
  nfp_err(pf->cpp,
   "Symbol '%s' wrong size: expected %u got %llu\n",
   name, size, nfp_rtsym_size(sym));
  return ERR_PTR(-EINVAL);
 }

 return sym;
}
