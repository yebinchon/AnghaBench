
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rvu {int flr_lock; } ;


 int BLKADDR_CPT0 ;
 int BLKADDR_NIX0 ;
 int BLKADDR_NPA ;
 int BLKADDR_SSO ;
 int BLKADDR_SSOW ;
 int BLKADDR_TIM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rvu_blklf_teardown (struct rvu*,int ,int ) ;
 int rvu_detach_rsrcs (struct rvu*,int *,int ) ;

__attribute__((used)) static void __rvu_flr_handler(struct rvu *rvu, u16 pcifunc)
{
 mutex_lock(&rvu->flr_lock);





 rvu_blklf_teardown(rvu, pcifunc, BLKADDR_NIX0);
 rvu_blklf_teardown(rvu, pcifunc, BLKADDR_CPT0);
 rvu_blklf_teardown(rvu, pcifunc, BLKADDR_TIM);
 rvu_blklf_teardown(rvu, pcifunc, BLKADDR_SSOW);
 rvu_blklf_teardown(rvu, pcifunc, BLKADDR_SSO);
 rvu_blklf_teardown(rvu, pcifunc, BLKADDR_NPA);
 rvu_detach_rsrcs(rvu, ((void*)0), pcifunc);
 mutex_unlock(&rvu->flr_lock);
}
