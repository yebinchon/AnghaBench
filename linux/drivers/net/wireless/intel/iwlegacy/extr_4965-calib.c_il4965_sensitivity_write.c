
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct il_sensitivity_data {int dummy; } ;
struct il_sensitivity_cmd {int * table; int control; } ;
struct il_priv {int * sensitivity_tbl; struct il_sensitivity_data sensitivity_data; } ;
struct il_host_cmd {int len; struct il_sensitivity_cmd* data; int flags; int id; } ;
typedef int cmd ;


 int CMD_ASYNC ;
 int C_SENSITIVITY ;
 int C_SENSITIVITY_CONTROL_WORK_TBL ;
 int D_CALIB (char*) ;
 int HD_TBL_SIZE ;
 int il4965_prepare_legacy_sensitivity_tbl (struct il_priv*,struct il_sensitivity_data*,int *) ;
 int il_send_cmd (struct il_priv*,struct il_host_cmd*) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct il_sensitivity_cmd*,int ,int) ;

__attribute__((used)) static int
il4965_sensitivity_write(struct il_priv *il)
{
 struct il_sensitivity_cmd cmd;
 struct il_sensitivity_data *data = ((void*)0);
 struct il_host_cmd cmd_out = {
  .id = C_SENSITIVITY,
  .len = sizeof(struct il_sensitivity_cmd),
  .flags = CMD_ASYNC,
  .data = &cmd,
 };

 data = &(il->sensitivity_data);

 memset(&cmd, 0, sizeof(cmd));

 il4965_prepare_legacy_sensitivity_tbl(il, data, &cmd.table[0]);


 cmd.control = C_SENSITIVITY_CONTROL_WORK_TBL;


 if (!memcmp
     (&cmd.table[0], &(il->sensitivity_tbl[0]),
      sizeof(u16) * HD_TBL_SIZE)) {
  D_CALIB("No change in C_SENSITIVITY\n");
  return 0;
 }


 memcpy(&(il->sensitivity_tbl[0]), &(cmd.table[0]),
        sizeof(u16) * HD_TBL_SIZE);

 return il_send_cmd(il, &cmd_out);
}
