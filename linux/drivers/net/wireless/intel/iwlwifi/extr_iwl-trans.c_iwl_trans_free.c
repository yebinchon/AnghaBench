
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dev_cmd_pool; } ;


 int kmem_cache_destroy (int ) ;

void iwl_trans_free(struct iwl_trans *trans)
{
 kmem_cache_destroy(trans->dev_cmd_pool);
}
