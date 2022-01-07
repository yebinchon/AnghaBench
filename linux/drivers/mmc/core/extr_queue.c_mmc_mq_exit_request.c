
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mmc_queue {int queue; } ;
struct blk_mq_tag_set {struct mmc_queue* driver_data; } ;


 int mmc_exit_request (int ,struct request*) ;

__attribute__((used)) static void mmc_mq_exit_request(struct blk_mq_tag_set *set, struct request *req,
    unsigned int hctx_idx)
{
 struct mmc_queue *mq = set->driver_data;

 mmc_exit_request(mq->queue, req);
}
