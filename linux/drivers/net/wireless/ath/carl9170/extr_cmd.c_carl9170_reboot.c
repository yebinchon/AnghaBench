
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carl9170_cmd {int dummy; } ;
struct ar9170 {int dummy; } ;


 int CARL9170_CMD_REBOOT_ASYNC ;
 int ENOMEM ;
 int __carl9170_exec_cmd (struct ar9170*,struct carl9170_cmd*,int) ;
 struct carl9170_cmd* carl9170_cmd_buf (struct ar9170*,int ,int ) ;

int carl9170_reboot(struct ar9170 *ar)
{
 struct carl9170_cmd *cmd;
 int err;

 cmd = carl9170_cmd_buf(ar, CARL9170_CMD_REBOOT_ASYNC, 0);
 if (!cmd)
  return -ENOMEM;

 err = __carl9170_exec_cmd(ar, cmd, 1);
 return err;
}
