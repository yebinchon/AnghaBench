
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int major; int* minor; } ;
struct si476x_func_info {int patch_id; int func; TYPE_1__ firmware; } ;
struct si476x_core {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int CMD_FUNC_INFO ;
 int CMD_FUNC_INFO_NRESP ;
 int SI476X_DEFAULT_TIMEOUT ;
 int si476x_core_send_command (struct si476x_core*,int ,int *,int ,int*,int ,int ) ;

int si476x_core_cmd_func_info(struct si476x_core *core,
         struct si476x_func_info *info)
{
 int err;
 u8 resp[CMD_FUNC_INFO_NRESP];

 err = si476x_core_send_command(core, CMD_FUNC_INFO,
           ((void*)0), 0,
           resp, ARRAY_SIZE(resp),
           SI476X_DEFAULT_TIMEOUT);

 info->firmware.major = resp[1];
 info->firmware.minor[0] = resp[2];
 info->firmware.minor[1] = resp[3];

 info->patch_id = ((u16) resp[4] << 8) | resp[5];
 info->func = resp[6];

 return err;
}
