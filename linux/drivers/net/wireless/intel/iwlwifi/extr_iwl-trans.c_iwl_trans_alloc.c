
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class_key {int dummy; } ;
struct iwl_trans_ops {int wait_tx_queues_empty; int wait_txq_empty; } ;
struct iwl_trans {int num_rx_queues; int dev_cmd_pool; int dev_cmd_pool_name; struct device* dev; struct iwl_trans_ops const* ops; int sync_cmd_lockdep_map; } ;
struct iwl_device_cmd {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int SLAB_HWCACHE_ALIGN ;
 int WARN_ON (int) ;
 char* dev_name (struct device*) ;
 struct iwl_trans* devm_kzalloc (struct device*,int,int ) ;
 int kmem_cache_create (int ,int,int,int ,int *) ;
 int lockdep_init_map (int *,char*,struct lock_class_key*,int ) ;
 int snprintf (int ,int,char*,char*) ;

struct iwl_trans *iwl_trans_alloc(unsigned int priv_size,
      struct device *dev,
      const struct iwl_trans_ops *ops)
{
 struct iwl_trans *trans;




 trans = devm_kzalloc(dev, sizeof(*trans) + priv_size, GFP_KERNEL);
 if (!trans)
  return ((void*)0);






 trans->dev = dev;
 trans->ops = ops;
 trans->num_rx_queues = 1;

 snprintf(trans->dev_cmd_pool_name, sizeof(trans->dev_cmd_pool_name),
   "iwl_cmd_pool:%s", dev_name(trans->dev));
 trans->dev_cmd_pool =
  kmem_cache_create(trans->dev_cmd_pool_name,
      sizeof(struct iwl_device_cmd),
      sizeof(void *),
      SLAB_HWCACHE_ALIGN,
      ((void*)0));
 if (!trans->dev_cmd_pool)
  return ((void*)0);

 WARN_ON(!ops->wait_txq_empty && !ops->wait_tx_queues_empty);

 return trans;
}
