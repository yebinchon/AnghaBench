
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int tag; } ;
struct mmc_request {int tag; int * cmd; } ;
struct mmc_blk_request {struct mmc_request mrq; int cmd; } ;
struct mmc_queue_req {struct mmc_blk_request brq; } ;


 int memset (struct mmc_blk_request*,int ,int) ;

__attribute__((used)) static struct mmc_request *mmc_blk_cqe_prep_dcmd(struct mmc_queue_req *mqrq,
       struct request *req)
{
 struct mmc_blk_request *brq = &mqrq->brq;

 memset(brq, 0, sizeof(*brq));

 brq->mrq.cmd = &brq->cmd;
 brq->mrq.tag = req->tag;

 return &brq->mrq;
}
