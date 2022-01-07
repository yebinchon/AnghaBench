
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cmdrsp_complete ) (struct mwifiex_adapter*,int *) ;} ;
struct mwifiex_adapter {TYPE_1__ if_ops; } ;
struct cmd_ctrl_node {int wait_q_enabled; int * resp_skb; scalar_t__ cmd_skb; int * data_buf; scalar_t__ cmd_flag; scalar_t__ cmd_no; } ;


 int skb_trim (scalar_t__,int ) ;
 int stub1 (struct mwifiex_adapter*,int *) ;

__attribute__((used)) static void
mwifiex_clean_cmd_node(struct mwifiex_adapter *adapter,
         struct cmd_ctrl_node *cmd_node)
{
 cmd_node->cmd_no = 0;
 cmd_node->cmd_flag = 0;
 cmd_node->data_buf = ((void*)0);
 cmd_node->wait_q_enabled = 0;

 if (cmd_node->cmd_skb)
  skb_trim(cmd_node->cmd_skb, 0);

 if (cmd_node->resp_skb) {
  adapter->if_ops.cmdrsp_complete(adapter, cmd_node->resp_skb);
  cmd_node->resp_skb = ((void*)0);
 }
}
