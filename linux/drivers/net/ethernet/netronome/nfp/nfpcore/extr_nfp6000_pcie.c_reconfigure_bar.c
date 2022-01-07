
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nfp_bar {int base; } ;
struct nfp6000_pcie {int dummy; } ;


 int compute_bar (struct nfp6000_pcie*,struct nfp_bar*,int *,int *,int,int,int,int ,size_t,int) ;
 int nfp6000_bar_write (struct nfp6000_pcie*,struct nfp_bar*,int ) ;

__attribute__((used)) static int
reconfigure_bar(struct nfp6000_pcie *nfp, struct nfp_bar *bar,
  int tgt, int act, int tok, u64 offset, size_t size, int width)
{
 u64 newbase;
 u32 newcfg;
 int err;

 err = compute_bar(nfp, bar, &newcfg, &newbase,
     tgt, act, tok, offset, size, width);
 if (err)
  return err;

 bar->base = newbase;

 return nfp6000_bar_write(nfp, bar, newcfg);
}
