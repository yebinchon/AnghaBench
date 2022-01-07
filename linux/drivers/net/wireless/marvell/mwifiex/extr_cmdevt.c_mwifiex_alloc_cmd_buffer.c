
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mwifiex_adapter {struct cmd_ctrl_node* cmd_pool; } ;
struct cmd_ctrl_node {int skb; } ;


 int ENOMEM ;
 int ERROR ;
 int GFP_KERNEL ;
 size_t MWIFIEX_NUM_OF_CMD_BUFFER ;
 int MWIFIEX_SIZE_OF_CMD_BUFFER ;
 int dev_alloc_skb (int ) ;
 struct cmd_ctrl_node* kcalloc (size_t,int,int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_insert_cmd_to_free_q (struct mwifiex_adapter*,struct cmd_ctrl_node*) ;

int mwifiex_alloc_cmd_buffer(struct mwifiex_adapter *adapter)
{
 struct cmd_ctrl_node *cmd_array;
 u32 i;


 cmd_array = kcalloc(MWIFIEX_NUM_OF_CMD_BUFFER,
       sizeof(struct cmd_ctrl_node), GFP_KERNEL);
 if (!cmd_array)
  return -ENOMEM;

 adapter->cmd_pool = cmd_array;


 for (i = 0; i < MWIFIEX_NUM_OF_CMD_BUFFER; i++) {
  cmd_array[i].skb = dev_alloc_skb(MWIFIEX_SIZE_OF_CMD_BUFFER);
  if (!cmd_array[i].skb) {
   mwifiex_dbg(adapter, ERROR,
        "unable to allocate command buffer\n");
   return -ENOMEM;
  }
 }

 for (i = 0; i < MWIFIEX_NUM_OF_CMD_BUFFER; i++)
  mwifiex_insert_cmd_to_free_q(adapter, &cmd_array[i]);

 return 0;
}
