
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mwifiex_private {int dummy; } ;
struct cmd_ctrl_node {int wait_q_enabled; int cmd_wait_q_woken; int* condition; int skb; int cmd_skb; void* data_buf; int cmd_no; struct mwifiex_private* priv; } ;



__attribute__((used)) static void
mwifiex_init_cmd_node(struct mwifiex_private *priv,
        struct cmd_ctrl_node *cmd_node,
        u32 cmd_no, void *data_buf, bool sync)
{
 cmd_node->priv = priv;
 cmd_node->cmd_no = cmd_no;

 if (sync) {
  cmd_node->wait_q_enabled = 1;
  cmd_node->cmd_wait_q_woken = 0;
  cmd_node->condition = &cmd_node->cmd_wait_q_woken;
 }
 cmd_node->data_buf = data_buf;
 cmd_node->cmd_skb = cmd_node->skb;
}
