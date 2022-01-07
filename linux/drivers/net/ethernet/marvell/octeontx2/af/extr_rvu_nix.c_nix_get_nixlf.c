
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rvu_pfvf {int nixlf; } ;
struct rvu_hwinfo {int * block; } ;
struct rvu {struct rvu_hwinfo* hw; } ;


 int BLKTYPE_NIX ;
 int NIX_AF_ERR_AF_LF_INVALID ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 int rvu_get_lf (struct rvu*,int *,int ,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int ) ;

__attribute__((used)) static int nix_get_nixlf(struct rvu *rvu, u16 pcifunc, int *nixlf)
{
 struct rvu_pfvf *pfvf = rvu_get_pfvf(rvu, pcifunc);
 struct rvu_hwinfo *hw = rvu->hw;
 int blkaddr;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, pcifunc);
 if (!pfvf->nixlf || blkaddr < 0)
  return NIX_AF_ERR_AF_LF_INVALID;

 *nixlf = rvu_get_lf(rvu, &hw->block[blkaddr], pcifunc, 0);
 if (*nixlf < 0)
  return NIX_AF_ERR_AF_LF_INVALID;

 return 0;
}
