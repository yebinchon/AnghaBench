
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mmc_queue_req {int dummy; } ;


 struct mmc_queue_req* blk_mq_rq_to_pdu (struct request*) ;

__attribute__((used)) static inline struct mmc_queue_req *req_to_mmc_queue_req(struct request *rq)
{
 return blk_mq_rq_to_pdu(rq);
}
