
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int* resp; scalar_t__ error; } ;
struct TYPE_7__ {scalar_t__ error; } ;
struct TYPE_6__ {scalar_t__ error; } ;
struct TYPE_5__ {scalar_t__ error; } ;
struct mmc_blk_request {TYPE_4__ cmd; TYPE_3__ data; TYPE_2__ stop; TYPE_1__ sbc; } ;


 int CMD_ERRORS ;
 int mmc_blk_eval_resp_error (struct mmc_blk_request*) ;

__attribute__((used)) static inline bool mmc_blk_rq_error(struct mmc_blk_request *brq)
{
 mmc_blk_eval_resp_error(brq);

 return brq->sbc.error || brq->cmd.error || brq->stop.error ||
        brq->data.error || brq->cmd.resp[0] & CMD_ERRORS;
}
