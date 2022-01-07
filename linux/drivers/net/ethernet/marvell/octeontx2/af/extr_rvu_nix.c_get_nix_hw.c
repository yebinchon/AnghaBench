
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_hwinfo {struct nix_hw* nix0; } ;
struct nix_hw {int dummy; } ;


 int BLKADDR_NIX0 ;

__attribute__((used)) static inline struct nix_hw *get_nix_hw(struct rvu_hwinfo *hw, int blkaddr)
{
 if (blkaddr == BLKADDR_NIX0 && hw->nix0)
  return hw->nix0;

 return ((void*)0);
}
