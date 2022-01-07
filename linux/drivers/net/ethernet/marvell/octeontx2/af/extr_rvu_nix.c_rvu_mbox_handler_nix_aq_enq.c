
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dummy; } ;
struct nix_aq_enq_rsp {int dummy; } ;
struct nix_aq_enq_req {int dummy; } ;


 int rvu_nix_aq_enq_inst (struct rvu*,struct nix_aq_enq_req*,struct nix_aq_enq_rsp*) ;

int rvu_mbox_handler_nix_aq_enq(struct rvu *rvu,
    struct nix_aq_enq_req *req,
    struct nix_aq_enq_rsp *rsp)
{
 return rvu_nix_aq_enq_inst(rvu, req, rsp);
}
