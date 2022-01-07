
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u16 ;
struct lbs_private {scalar_t__ mesh_tlv; } ;
struct TYPE_2__ {scalar_t__ result; void* size; void* command; } ;
struct cmd_ds_mesh_config {void* action; void* type; TYPE_1__ hdr; } ;


 int CMD_MESH_CONFIG ;
 int CMD_MESH_CONFIG_OLD ;
 int MESH_IFACE_BIT_OFFSET ;
 int MESH_IFACE_ID ;
 scalar_t__ TLV_TYPE_MESH_ID ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int,struct cmd_ds_mesh_config*) ;

__attribute__((used)) static int __lbs_mesh_config_send(struct lbs_private *priv,
      struct cmd_ds_mesh_config *cmd,
      uint16_t action, uint16_t type)
{
 int ret;
 u16 command = CMD_MESH_CONFIG_OLD;





 if (priv->mesh_tlv == TLV_TYPE_MESH_ID)
  command = CMD_MESH_CONFIG |
     (MESH_IFACE_ID << MESH_IFACE_BIT_OFFSET);

 cmd->hdr.command = cpu_to_le16(command);
 cmd->hdr.size = cpu_to_le16(sizeof(struct cmd_ds_mesh_config));
 cmd->hdr.result = 0;

 cmd->type = cpu_to_le16(type);
 cmd->action = cpu_to_le16(action);

 ret = lbs_cmd_with_response(priv, command, cmd);

 return ret;
}
