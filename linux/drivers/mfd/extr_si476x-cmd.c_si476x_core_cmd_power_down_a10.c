
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si476x_power_down_args {int dummy; } ;
struct si476x_core {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int CMD_POWER_DOWN ;
 int CMD_POWER_DOWN_A10_NRESP ;
 int SI476X_DEFAULT_TIMEOUT ;
 int si476x_core_send_command (struct si476x_core*,int ,int *,int ,int *,int ,int ) ;

__attribute__((used)) static int si476x_core_cmd_power_down_a10(struct si476x_core *core,
       struct si476x_power_down_args *pdargs)
{
 u8 resp[CMD_POWER_DOWN_A10_NRESP];

 return si476x_core_send_command(core, CMD_POWER_DOWN,
     ((void*)0), 0,
     resp, ARRAY_SIZE(resp),
     SI476X_DEFAULT_TIMEOUT);
}
