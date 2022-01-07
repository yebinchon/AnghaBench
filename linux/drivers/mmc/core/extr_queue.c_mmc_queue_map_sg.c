
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mmc_queue_req {int sg; } ;
struct mmc_queue {int queue; } ;


 unsigned int blk_rq_map_sg (int ,struct request*,int ) ;
 struct request* mmc_queue_req_to_req (struct mmc_queue_req*) ;

unsigned int mmc_queue_map_sg(struct mmc_queue *mq, struct mmc_queue_req *mqrq)
{
 struct request *req = mmc_queue_req_to_req(mqrq);

 return blk_rq_map_sg(mq->queue, req, mqrq->sg);
}
