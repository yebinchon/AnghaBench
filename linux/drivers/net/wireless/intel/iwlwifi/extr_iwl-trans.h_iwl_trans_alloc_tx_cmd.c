
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dev_cmd_pool; } ;
struct iwl_device_cmd {int dummy; } ;


 int GFP_ATOMIC ;
 struct iwl_device_cmd* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static inline struct iwl_device_cmd *
iwl_trans_alloc_tx_cmd(struct iwl_trans *trans)
{
 return kmem_cache_alloc(trans->dev_cmd_pool, GFP_ATOMIC);
}
