
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rvu_pfvf {scalar_t__ cq_ctx; scalar_t__ rq_ctx; scalar_t__ sq_ctx; } ;
struct rvu {int dev; } ;
struct TYPE_2__ {int pcifunc; } ;
struct hwctx_disable_req {int ctype; TYPE_1__ hdr; } ;


 int NIX_AQ_CTYPE_CQ ;
 int NIX_AQ_CTYPE_RQ ;
 int NIX_AQ_CTYPE_SQ ;
 int dev_err (int ,char*) ;
 int nix_ctx_free (struct rvu*,struct rvu_pfvf*) ;
 int nix_interface_deinit (struct rvu*,int ,int) ;
 int nix_lf_hwctx_disable (struct rvu*,struct hwctx_disable_req*) ;
 int nix_rx_sync (struct rvu*,int) ;
 int nix_txschq_free (struct rvu*,int ) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int ) ;

void rvu_nix_lf_teardown(struct rvu *rvu, u16 pcifunc, int blkaddr, int nixlf)
{
 struct rvu_pfvf *pfvf = rvu_get_pfvf(rvu, pcifunc);
 struct hwctx_disable_req ctx_req;
 int err;

 ctx_req.hdr.pcifunc = pcifunc;


 nix_interface_deinit(rvu, pcifunc, nixlf);
 nix_rx_sync(rvu, blkaddr);
 nix_txschq_free(rvu, pcifunc);

 if (pfvf->sq_ctx) {
  ctx_req.ctype = NIX_AQ_CTYPE_SQ;
  err = nix_lf_hwctx_disable(rvu, &ctx_req);
  if (err)
   dev_err(rvu->dev, "SQ ctx disable failed\n");
 }

 if (pfvf->rq_ctx) {
  ctx_req.ctype = NIX_AQ_CTYPE_RQ;
  err = nix_lf_hwctx_disable(rvu, &ctx_req);
  if (err)
   dev_err(rvu->dev, "RQ ctx disable failed\n");
 }

 if (pfvf->cq_ctx) {
  ctx_req.ctype = NIX_AQ_CTYPE_CQ;
  err = nix_lf_hwctx_disable(rvu, &ctx_req);
  if (err)
   dev_err(rvu->dev, "CQ ctx disable failed\n");
 }

 nix_ctx_free(rvu, pfvf);
}
