
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rvu {int dummy; } ;
struct TYPE_2__ {int in_use; int total; int * cfg; } ;
struct nix_hw {TYPE_1__ mark_format; } ;


 int ERANGE ;
 int NIX_AF_MARK_FORMATX_CTL (int) ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;

int rvu_nix_reserve_mark_format(struct rvu *rvu, struct nix_hw *nix_hw,
    int blkaddr, u32 cfg)
{
 int fmt_idx;

 for (fmt_idx = 0; fmt_idx < nix_hw->mark_format.in_use; fmt_idx++) {
  if (nix_hw->mark_format.cfg[fmt_idx] == cfg)
   return fmt_idx;
 }
 if (fmt_idx >= nix_hw->mark_format.total)
  return -ERANGE;

 rvu_write64(rvu, blkaddr, NIX_AF_MARK_FORMATX_CTL(fmt_idx), cfg);
 nix_hw->mark_format.cfg[fmt_idx] = cfg;
 nix_hw->mark_format.in_use++;
 return fmt_idx;
}
