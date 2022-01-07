
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {scalar_t__ sleep_cfm; } ;


 int INFO ;
 int dev_kfree_skb_any (scalar_t__) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_free_cmd_buffer (struct mwifiex_adapter*) ;
 int mwifiex_invalidate_lists (struct mwifiex_adapter*) ;

void mwifiex_free_cmd_buffers(struct mwifiex_adapter *adapter)
{
 mwifiex_invalidate_lists(adapter);


 mwifiex_dbg(adapter, INFO, "info: free cmd buffer\n");
 mwifiex_free_cmd_buffer(adapter);

 if (adapter->sleep_cfm)
  dev_kfree_skb_any(adapter->sleep_cfm);
}
