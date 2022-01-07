
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvaser_cmd_ext {int len; } ;
struct TYPE_2__ {scalar_t__ cmd_no; } ;
struct kvaser_cmd {TYPE_1__ header; } ;


 scalar_t__ CMD_EXTENDED ;
 size_t le16_to_cpu (int ) ;

__attribute__((used)) static size_t kvaser_usb_hydra_cmd_size(struct kvaser_cmd *cmd)
{
 size_t ret;

 if (cmd->header.cmd_no == CMD_EXTENDED)
  ret = le16_to_cpu(((struct kvaser_cmd_ext *)cmd)->len);
 else
  ret = sizeof(struct kvaser_cmd);

 return ret;
}
