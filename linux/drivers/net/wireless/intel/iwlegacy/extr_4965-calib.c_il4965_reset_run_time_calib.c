
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_sensitivity_data {int dummy; } ;
struct TYPE_2__ {int * delta_gain_code; } ;
struct il_priv {TYPE_1__ chain_noise_data; TYPE_1__ sensitivity_data; } ;
struct il_chain_noise_data {int dummy; } ;


 int CHAIN_NOISE_DELTA_GAIN_INIT_VAL ;
 int CMD_ASYNC ;
 int NUM_RX_CHAINS ;
 int il_send_stats_request (struct il_priv*,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

void
il4965_reset_run_time_calib(struct il_priv *il)
{
 int i;
 memset(&(il->sensitivity_data), 0, sizeof(struct il_sensitivity_data));
 memset(&(il->chain_noise_data), 0, sizeof(struct il_chain_noise_data));
 for (i = 0; i < NUM_RX_CHAINS; i++)
  il->chain_noise_data.delta_gain_code[i] =
      CHAIN_NOISE_DELTA_GAIN_INIT_VAL;



 il_send_stats_request(il, CMD_ASYNC, 1);
}
