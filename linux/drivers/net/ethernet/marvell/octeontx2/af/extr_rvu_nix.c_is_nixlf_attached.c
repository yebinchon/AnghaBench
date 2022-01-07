
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rvu_pfvf {int nixlf; } ;
struct rvu {int dummy; } ;


 int BLKTYPE_NIX ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int ) ;

bool is_nixlf_attached(struct rvu *rvu, u16 pcifunc)
{
 struct rvu_pfvf *pfvf = rvu_get_pfvf(rvu, pcifunc);
 int blkaddr;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NIX, pcifunc);
 if (!pfvf->nixlf || blkaddr < 0)
  return 0;
 return 1;
}
