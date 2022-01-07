
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct lbs_private {int dummy; } ;
struct TYPE_4__ {int key; void* keylen; void* keyinfo; void* keytypeid; void* length; void* type; } ;
struct TYPE_3__ {void* size; } ;
struct cmd_key_material {TYPE_2__ param; void* action; TYPE_1__ hdr; } ;
typedef int cmd ;


 int CMD_802_11_KEY_MATERIAL ;
 int CMD_ACT_SET ;
 int TLV_TYPE_KEY_MATERIAL ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_key_material*) ;
 int memcpy (int ,int const*,int) ;
 int memset (struct cmd_key_material*,int ,int) ;

__attribute__((used)) static int lbs_set_key_material(struct lbs_private *priv,
    int key_type, int key_info,
    const u8 *key, u16 key_len)
{
 struct cmd_key_material cmd;
 int ret;
 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_ACT_SET);
 cmd.param.type = cpu_to_le16(TLV_TYPE_KEY_MATERIAL);
 cmd.param.length = cpu_to_le16(sizeof(cmd.param) - 4);
 cmd.param.keytypeid = cpu_to_le16(key_type);
 cmd.param.keyinfo = cpu_to_le16(key_info);
 cmd.param.keylen = cpu_to_le16(key_len);
 if (key && key_len)
  memcpy(cmd.param.key, key, key_len);

 ret = lbs_cmd_with_response(priv, CMD_802_11_KEY_MATERIAL, &cmd);

 return ret;
}
