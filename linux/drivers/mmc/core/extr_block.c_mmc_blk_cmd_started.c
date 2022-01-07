
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* resp; int error; } ;
struct TYPE_3__ {int error; } ;
struct mmc_blk_request {TYPE_2__ cmd; TYPE_1__ sbc; } ;


 int CMD_ERRORS ;

__attribute__((used)) static inline bool mmc_blk_cmd_started(struct mmc_blk_request *brq)
{
 return !brq->sbc.error && !brq->cmd.error &&
        !(brq->cmd.resp[0] & CMD_ERRORS);
}
