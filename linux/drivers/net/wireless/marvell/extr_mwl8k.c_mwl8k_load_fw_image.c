
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwl8k_priv {int dummy; } ;
struct mwl8k_cmd_pkt {void* length; int payload; scalar_t__ result; scalar_t__ macid; scalar_t__ seq_num; void* code; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_CMD_CODE_DNLD ;
 void* cpu_to_le16 (int) ;
 int kfree (struct mwl8k_cmd_pkt*) ;
 struct mwl8k_cmd_pkt* kmalloc (int,int ) ;
 int memcpy (int ,int const*,int) ;
 int mwl8k_send_fw_load_cmd (struct mwl8k_priv*,struct mwl8k_cmd_pkt*,int) ;

__attribute__((used)) static int mwl8k_load_fw_image(struct mwl8k_priv *priv,
    const u8 *data, size_t length)
{
 struct mwl8k_cmd_pkt *cmd;
 int done;
 int rc = 0;

 cmd = kmalloc(sizeof(*cmd) + 256, GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->code = cpu_to_le16(MWL8K_CMD_CODE_DNLD);
 cmd->seq_num = 0;
 cmd->macid = 0;
 cmd->result = 0;

 done = 0;
 while (length) {
  int block_size = length > 256 ? 256 : length;

  memcpy(cmd->payload, data + done, block_size);
  cmd->length = cpu_to_le16(block_size);

  rc = mwl8k_send_fw_load_cmd(priv, cmd,
      sizeof(*cmd) + block_size);
  if (rc)
   break;

  done += block_size;
  length -= block_size;
 }

 if (!rc) {
  cmd->length = 0;
  rc = mwl8k_send_fw_load_cmd(priv, cmd, sizeof(*cmd));
 }

 kfree(cmd);

 return rc;
}
