
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mmc_blk_request {int data; } ;
struct mmc_queue_req {struct mmc_blk_request brq; } ;
struct mmc_card {int host; } ;


 int card_busy_detect (struct mmc_card*,unsigned int,struct request*,int *) ;
 unsigned int mmc_blk_data_timeout_ms (int ,int *) ;
 int mmc_blk_send_stop (struct mmc_card*,unsigned int) ;
 int mmc_retune_hold_now (int ) ;
 int mmc_retune_release (int ) ;
 struct mmc_queue_req* req_to_mmc_queue_req (struct request*) ;

__attribute__((used)) static int mmc_blk_fix_state(struct mmc_card *card, struct request *req)
{
 struct mmc_queue_req *mqrq = req_to_mmc_queue_req(req);
 struct mmc_blk_request *brq = &mqrq->brq;
 unsigned int timeout = mmc_blk_data_timeout_ms(card->host, &brq->data);
 int err;

 mmc_retune_hold_now(card->host);

 mmc_blk_send_stop(card, timeout);

 err = card_busy_detect(card, timeout, req, ((void*)0));

 mmc_retune_release(card->host);

 return err;
}
