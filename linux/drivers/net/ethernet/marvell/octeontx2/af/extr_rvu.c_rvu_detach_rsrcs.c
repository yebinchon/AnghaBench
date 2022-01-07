
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rvu_hwinfo {struct rvu_block* block; } ;
struct TYPE_2__ {int bmap; } ;
struct rvu_block {int type; TYPE_1__ lf; } ;
struct rvu {int rsrc_lock; struct rvu_hwinfo* hw; } ;
struct rsrc_detach {int cptlfs; int timlfs; int ssow; int sso; int nixlf; int npalf; scalar_t__ partial; } ;


 int BLKADDR_CPT0 ;
 int BLKADDR_NIX0 ;
 int BLKADDR_NPA ;
 int BLKADDR_SSO ;
 int BLKADDR_SSOW ;
 int BLKADDR_TIM ;
 int BLK_COUNT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rvu_detach_block (struct rvu*,int ,int ) ;

__attribute__((used)) static int rvu_detach_rsrcs(struct rvu *rvu, struct rsrc_detach *detach,
       u16 pcifunc)
{
 struct rvu_hwinfo *hw = rvu->hw;
 bool detach_all = 1;
 struct rvu_block *block;
 int blkid;

 mutex_lock(&rvu->rsrc_lock);


 if (detach && detach->partial)
  detach_all = 0;




 for (blkid = 0; blkid < BLK_COUNT; blkid++) {
  block = &hw->block[blkid];
  if (!block->lf.bmap)
   continue;
  if (!detach_all && detach) {
   if (blkid == BLKADDR_NPA && !detach->npalf)
    continue;
   else if ((blkid == BLKADDR_NIX0) && !detach->nixlf)
    continue;
   else if ((blkid == BLKADDR_SSO) && !detach->sso)
    continue;
   else if ((blkid == BLKADDR_SSOW) && !detach->ssow)
    continue;
   else if ((blkid == BLKADDR_TIM) && !detach->timlfs)
    continue;
   else if ((blkid == BLKADDR_CPT0) && !detach->cptlfs)
    continue;
  }
  rvu_detach_block(rvu, pcifunc, block->type);
 }

 mutex_unlock(&rvu->rsrc_lock);
 return 0;
}
