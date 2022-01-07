
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dummy; } ;
struct npa_aq_enq_rsp {int dummy; } ;
struct npa_aq_enq_req {int dummy; } ;


 int rvu_npa_aq_enq_inst (struct rvu*,struct npa_aq_enq_req*,struct npa_aq_enq_rsp*) ;

int rvu_mbox_handler_npa_aq_enq(struct rvu *rvu,
    struct npa_aq_enq_req *req,
    struct npa_aq_enq_rsp *rsp)
{
 return rvu_npa_aq_enq_inst(rvu, req, rsp);
}
