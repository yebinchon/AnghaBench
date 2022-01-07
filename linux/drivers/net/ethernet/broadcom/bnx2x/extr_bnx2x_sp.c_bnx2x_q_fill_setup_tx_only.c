
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int hi; int lo; } ;
struct TYPE_11__ {TYPE_3__ tx_bd_page_base; } ;
struct tx_queue_init_ramrod_data {TYPE_5__ tx; int general; } ;
struct TYPE_7__ {int flags; int txq_params; int gen_params; } ;
struct TYPE_8__ {TYPE_1__ tx_only; } ;
struct bnx2x_queue_state_params {TYPE_4__* q_obj; TYPE_2__ params; } ;
struct bnx2x {int dummy; } ;
struct TYPE_10__ {int * cids; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,int ,int ,int ) ;
 int bnx2x_q_fill_init_general_data (struct bnx2x*,TYPE_4__*,int *,int *,int *) ;
 int bnx2x_q_fill_init_tx_data (TYPE_4__*,int *,TYPE_5__*,int *) ;

__attribute__((used)) static void bnx2x_q_fill_setup_tx_only(struct bnx2x *bp,
    struct bnx2x_queue_state_params *cmd_params,
    struct tx_queue_init_ramrod_data *data)
{
 bnx2x_q_fill_init_general_data(bp, cmd_params->q_obj,
           &cmd_params->params.tx_only.gen_params,
           &data->general,
           &cmd_params->params.tx_only.flags);

 bnx2x_q_fill_init_tx_data(cmd_params->q_obj,
      &cmd_params->params.tx_only.txq_params,
      &data->tx,
      &cmd_params->params.tx_only.flags);

 DP(BNX2X_MSG_SP, "cid %d, tx bd page lo %x hi %x",
    cmd_params->q_obj->cids[0],
    data->tx.tx_bd_page_base.lo,
    data->tx.tx_bd_page_base.hi);
}
