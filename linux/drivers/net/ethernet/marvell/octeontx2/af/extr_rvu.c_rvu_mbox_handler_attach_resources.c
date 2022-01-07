
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rvu {int rsrc_lock; } ;
struct TYPE_2__ {int pcifunc; } ;
struct rsrc_attach {int sso; int ssow; int timlfs; int cptlfs; scalar_t__ modify; scalar_t__ nixlf; scalar_t__ npalf; TYPE_1__ hdr; } ;
struct msg_rsp {int dummy; } ;


 int BLKTYPE_CPT ;
 int BLKTYPE_NIX ;
 int BLKTYPE_NPA ;
 int BLKTYPE_SSO ;
 int BLKTYPE_SSOW ;
 int BLKTYPE_TIM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rvu_attach_block (struct rvu*,int ,int ,int) ;
 int rvu_check_rsrc_availability (struct rvu*,struct rsrc_attach*,int ) ;
 int rvu_detach_block (struct rvu*,int ,int ) ;
 int rvu_detach_rsrcs (struct rvu*,int *,int ) ;

__attribute__((used)) static int rvu_mbox_handler_attach_resources(struct rvu *rvu,
          struct rsrc_attach *attach,
          struct msg_rsp *rsp)
{
 u16 pcifunc = attach->hdr.pcifunc;
 int err;


 if (!attach->modify)
  rvu_detach_rsrcs(rvu, ((void*)0), pcifunc);

 mutex_lock(&rvu->rsrc_lock);


 err = rvu_check_rsrc_availability(rvu, attach, pcifunc);
 if (err)
  goto exit;


 if (attach->npalf)
  rvu_attach_block(rvu, pcifunc, BLKTYPE_NPA, 1);

 if (attach->nixlf)
  rvu_attach_block(rvu, pcifunc, BLKTYPE_NIX, 1);

 if (attach->sso) {





  if (attach->modify)
   rvu_detach_block(rvu, pcifunc, BLKTYPE_SSO);
  rvu_attach_block(rvu, pcifunc, BLKTYPE_SSO, attach->sso);
 }

 if (attach->ssow) {
  if (attach->modify)
   rvu_detach_block(rvu, pcifunc, BLKTYPE_SSOW);
  rvu_attach_block(rvu, pcifunc, BLKTYPE_SSOW, attach->ssow);
 }

 if (attach->timlfs) {
  if (attach->modify)
   rvu_detach_block(rvu, pcifunc, BLKTYPE_TIM);
  rvu_attach_block(rvu, pcifunc, BLKTYPE_TIM, attach->timlfs);
 }

 if (attach->cptlfs) {
  if (attach->modify)
   rvu_detach_block(rvu, pcifunc, BLKTYPE_CPT);
  rvu_attach_block(rvu, pcifunc, BLKTYPE_CPT, attach->cptlfs);
 }

exit:
 mutex_unlock(&rvu->rsrc_lock);
 return err;
}
