
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ result; void* size; void* command; } ;
struct cmd_ds_mesh_access {void* action; TYPE_1__ hdr; } ;


 int CMD_MESH_ACCESS ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int,struct cmd_ds_mesh_access*) ;

__attribute__((used)) static int lbs_mesh_access(struct lbs_private *priv, uint16_t cmd_action,
      struct cmd_ds_mesh_access *cmd)
{
 int ret;

 cmd->hdr.command = cpu_to_le16(CMD_MESH_ACCESS);
 cmd->hdr.size = cpu_to_le16(sizeof(*cmd));
 cmd->hdr.result = 0;

 cmd->action = cpu_to_le16(cmd_action);

 ret = lbs_cmd_with_response(priv, CMD_MESH_ACCESS, cmd);

 return ret;
}
