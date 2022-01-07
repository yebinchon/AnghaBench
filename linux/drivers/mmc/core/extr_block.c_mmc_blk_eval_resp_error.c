
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* resp; int error; } ;
struct TYPE_3__ {int sbc; } ;
struct mmc_blk_request {TYPE_2__ stop; TYPE_1__ mrq; } ;


 int CMD_ERRORS ;
 int EIO ;
 int R1_OUT_OF_RANGE ;

__attribute__((used)) static void mmc_blk_eval_resp_error(struct mmc_blk_request *brq)
{
 u32 val;
 if (!brq->stop.error) {
  bool oor_with_open_end;


  val = brq->stop.resp[0] & CMD_ERRORS;
  oor_with_open_end = val & R1_OUT_OF_RANGE && !brq->mrq.sbc;

  if (val && !oor_with_open_end)
   brq->stop.error = -EIO;
 }
}
