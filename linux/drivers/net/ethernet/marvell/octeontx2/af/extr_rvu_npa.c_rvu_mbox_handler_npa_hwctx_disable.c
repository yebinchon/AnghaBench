
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dummy; } ;
struct msg_rsp {int dummy; } ;
struct hwctx_disable_req {int dummy; } ;


 int npa_lf_hwctx_disable (struct rvu*,struct hwctx_disable_req*) ;

int rvu_mbox_handler_npa_hwctx_disable(struct rvu *rvu,
           struct hwctx_disable_req *req,
           struct msg_rsp *rsp)
{
 return npa_lf_hwctx_disable(rvu, req);
}
