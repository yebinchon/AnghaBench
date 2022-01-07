
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct mmc_queue_req {int * sg; } ;


 int kfree (int *) ;
 struct mmc_queue_req* req_to_mmc_queue_req (struct request*) ;

__attribute__((used)) static void mmc_exit_request(struct request_queue *q, struct request *req)
{
 struct mmc_queue_req *mq_rq = req_to_mmc_queue_req(req);

 kfree(mq_rq->sg);
 mq_rq->sg = ((void*)0);
}
