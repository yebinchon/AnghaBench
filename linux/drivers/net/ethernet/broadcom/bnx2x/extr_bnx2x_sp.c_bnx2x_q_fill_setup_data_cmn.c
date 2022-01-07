
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct client_init_ramrod_data {int rx; int tx; int general; } ;
struct TYPE_3__ {int pause_params; int flags; int rxq_params; int txq_params; int gen_params; } ;
struct TYPE_4__ {TYPE_1__ setup; } ;
struct bnx2x_queue_state_params {TYPE_2__ params; int q_obj; } ;
struct bnx2x {int dummy; } ;


 int bnx2x_q_fill_init_general_data (struct bnx2x*,int ,int *,int *,int *) ;
 int bnx2x_q_fill_init_pause_data (int ,int *,int *) ;
 int bnx2x_q_fill_init_rx_data (int ,int *,int *,int *) ;
 int bnx2x_q_fill_init_tx_data (int ,int *,int *,int *) ;

__attribute__((used)) static void bnx2x_q_fill_setup_data_cmn(struct bnx2x *bp,
    struct bnx2x_queue_state_params *cmd_params,
    struct client_init_ramrod_data *data)
{
 bnx2x_q_fill_init_general_data(bp, cmd_params->q_obj,
           &cmd_params->params.setup.gen_params,
           &data->general,
           &cmd_params->params.setup.flags);

 bnx2x_q_fill_init_tx_data(cmd_params->q_obj,
      &cmd_params->params.setup.txq_params,
      &data->tx,
      &cmd_params->params.setup.flags);

 bnx2x_q_fill_init_rx_data(cmd_params->q_obj,
      &cmd_params->params.setup.rxq_params,
      &data->rx,
      &cmd_params->params.setup.flags);

 bnx2x_q_fill_init_pause_data(cmd_params->q_obj,
         &cmd_params->params.setup.pause_params,
         &data->rx);
}
