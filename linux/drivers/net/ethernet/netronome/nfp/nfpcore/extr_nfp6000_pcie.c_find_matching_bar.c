
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nfp_bar {int dummy; } ;
struct nfp6000_pcie {int bars; struct nfp_bar* bar; } ;


 scalar_t__ matching_bar (struct nfp_bar*,int ,int ,int ,int ,size_t,int) ;

__attribute__((used)) static int
find_matching_bar(struct nfp6000_pcie *nfp,
    u32 tgt, u32 act, u32 tok, u64 offset, size_t size, int width)
{
 int n;

 for (n = 0; n < nfp->bars; n++) {
  struct nfp_bar *bar = &nfp->bar[n];

  if (matching_bar(bar, tgt, act, tok, offset, size, width))
   return n;
 }

 return -1;
}
