
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dev_cmd_pool; } ;
struct iwl_device_cmd {int dummy; } ;


 int kmem_cache_free (int ,struct iwl_device_cmd*) ;

__attribute__((used)) static inline void iwl_trans_free_tx_cmd(struct iwl_trans *trans,
      struct iwl_device_cmd *dev_cmd)
{
 kmem_cache_free(trans->dev_cmd_pool, dev_cmd);
}
