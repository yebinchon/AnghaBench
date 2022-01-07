
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mmc_queue_req {int sg; } ;
struct mmc_queue {struct mmc_card* card; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {struct mmc_host* host; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int mmc_alloc_sg (int ,int ) ;
 int mmc_get_max_segments (struct mmc_host*) ;
 struct mmc_queue_req* req_to_mmc_queue_req (struct request*) ;

__attribute__((used)) static int __mmc_init_request(struct mmc_queue *mq, struct request *req,
         gfp_t gfp)
{
 struct mmc_queue_req *mq_rq = req_to_mmc_queue_req(req);
 struct mmc_card *card = mq->card;
 struct mmc_host *host = card->host;

 mq_rq->sg = mmc_alloc_sg(mmc_get_max_segments(host), gfp);
 if (!mq_rq->sg)
  return -ENOMEM;

 return 0;
}
