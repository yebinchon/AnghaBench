
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mmc_queue_req {int dummy; } ;


 struct request* blk_mq_rq_from_pdu (struct mmc_queue_req*) ;

__attribute__((used)) static inline struct request *mmc_queue_req_to_req(struct mmc_queue_req *mqr)
{
 return blk_mq_rq_from_pdu(mqr);
}
