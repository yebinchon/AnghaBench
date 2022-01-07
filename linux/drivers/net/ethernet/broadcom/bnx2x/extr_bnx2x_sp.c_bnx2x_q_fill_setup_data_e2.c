
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tpa_en; } ;
struct client_init_ramrod_data {TYPE_2__ rx; } ;
struct bnx2x_queue_setup_params {int flags; } ;
struct TYPE_3__ {struct bnx2x_queue_setup_params setup; } ;
struct bnx2x_queue_state_params {TYPE_1__ params; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_Q_FLG_TPA_IPV6 ;
 int CLIENT_INIT_RX_DATA_TPA_EN_IPV6 ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void bnx2x_q_fill_setup_data_e2(struct bnx2x *bp,
    struct bnx2x_queue_state_params *cmd_params,
    struct client_init_ramrod_data *data)
{
 struct bnx2x_queue_setup_params *params = &cmd_params->params.setup;




 data->rx.tpa_en |= test_bit(BNX2X_Q_FLG_TPA_IPV6, &params->flags) *
    CLIENT_INIT_RX_DATA_TPA_EN_IPV6;
}
