
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mmc_queue {int wait; } ;


 int mmc_blk_mq_complete_prev_req (struct mmc_queue*,struct request**) ;
 int mmc_blk_rw_wait_cond (struct mmc_queue*,int*) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int mmc_blk_rw_wait(struct mmc_queue *mq, struct request **prev_req)
{
 int err = 0;

 wait_event(mq->wait, mmc_blk_rw_wait_cond(mq, &err));


 mmc_blk_mq_complete_prev_req(mq, prev_req);

 return err;
}
