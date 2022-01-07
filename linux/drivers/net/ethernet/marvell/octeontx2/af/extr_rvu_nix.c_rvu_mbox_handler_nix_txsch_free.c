
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvu {int dummy; } ;
struct TYPE_2__ {int pcifunc; } ;
struct nix_txsch_free_req {int flags; TYPE_1__ hdr; } ;
struct msg_rsp {int dummy; } ;


 int TXSCHQ_FREE_ALL ;
 int nix_txschq_free (struct rvu*,int ) ;
 int nix_txschq_free_one (struct rvu*,struct nix_txsch_free_req*) ;

int rvu_mbox_handler_nix_txsch_free(struct rvu *rvu,
        struct nix_txsch_free_req *req,
        struct msg_rsp *rsp)
{
 if (req->flags & TXSCHQ_FREE_ALL)
  return nix_txschq_free(rvu, req->hdr.pcifunc);
 else
  return nix_txschq_free_one(rvu, req);
}
