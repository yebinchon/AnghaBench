
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si476x_core {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int CMD_FM_PHASE_DIV_STATUS ;
 int CMD_FM_PHASE_DIV_STATUS_NRESP ;
 int SI476X_DEFAULT_TIMEOUT ;
 int si476x_core_send_command (struct si476x_core*,int ,int *,int ,int*,int ,int ) ;

int si476x_core_cmd_fm_phase_div_status(struct si476x_core *core)
{
 int err;
 u8 resp[CMD_FM_PHASE_DIV_STATUS_NRESP];

 err = si476x_core_send_command(core, CMD_FM_PHASE_DIV_STATUS,
           ((void*)0), 0,
           resp, ARRAY_SIZE(resp),
           SI476X_DEFAULT_TIMEOUT);

 return (err < 0) ? err : resp[1];
}
