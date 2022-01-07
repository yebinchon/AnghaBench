
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rvu_pfvf {int dummy; } ;
struct rvu {int dummy; } ;
struct TYPE_2__ {int pcifunc; } ;
struct hwctx_disable_req {int ctype; TYPE_1__ hdr; } ;


 int NPA_AQ_CTYPE_AURA ;
 int NPA_AQ_CTYPE_POOL ;
 int npa_ctx_free (struct rvu*,struct rvu_pfvf*) ;
 int npa_lf_hwctx_disable (struct rvu*,struct hwctx_disable_req*) ;
 struct rvu_pfvf* rvu_get_pfvf (struct rvu*,int ) ;

void rvu_npa_lf_teardown(struct rvu *rvu, u16 pcifunc, int npalf)
{
 struct rvu_pfvf *pfvf = rvu_get_pfvf(rvu, pcifunc);
 struct hwctx_disable_req ctx_req;


 ctx_req.hdr.pcifunc = pcifunc;
 ctx_req.ctype = NPA_AQ_CTYPE_POOL;
 npa_lf_hwctx_disable(rvu, &ctx_req);


 ctx_req.ctype = NPA_AQ_CTYPE_AURA;
 npa_lf_hwctx_disable(rvu, &ctx_req);

 npa_ctx_free(rvu, pfvf);
}
