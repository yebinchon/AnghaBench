#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lock_class_key {int dummy; } ;
struct iwl_trans_ops {int /*<<< orphan*/  wait_tx_queues_empty; int /*<<< orphan*/  wait_txq_empty; } ;
struct iwl_trans {int num_rx_queues; int /*<<< orphan*/  dev_cmd_pool; int /*<<< orphan*/  dev_cmd_pool_name; struct device* dev; struct iwl_trans_ops const* ops; int /*<<< orphan*/  sync_cmd_lockdep_map; } ;
struct iwl_device_cmd {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (struct device*) ; 
 struct iwl_trans* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,struct lock_class_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*) ; 

struct iwl_trans *FUNC6(unsigned int priv_size,
				  struct device *dev,
				  const struct iwl_trans_ops *ops)
{
	struct iwl_trans *trans;
#ifdef CONFIG_LOCKDEP
	static struct lock_class_key __key;
#endif

	trans = FUNC2(dev, sizeof(*trans) + priv_size, GFP_KERNEL);
	if (!trans)
		return NULL;

#ifdef CONFIG_LOCKDEP
	lockdep_init_map(&trans->sync_cmd_lockdep_map, "sync_cmd_lockdep_map",
			 &__key, 0);
#endif

	trans->dev = dev;
	trans->ops = ops;
	trans->num_rx_queues = 1;

	FUNC5(trans->dev_cmd_pool_name, sizeof(trans->dev_cmd_pool_name),
		 "iwl_cmd_pool:%s", FUNC1(trans->dev));
	trans->dev_cmd_pool =
		FUNC3(trans->dev_cmd_pool_name,
				  sizeof(struct iwl_device_cmd),
				  sizeof(void *),
				  SLAB_HWCACHE_ALIGN,
				  NULL);
	if (!trans->dev_cmd_pool)
		return NULL;

	FUNC0(!ops->wait_txq_empty && !ops->wait_tx_queues_empty);

	return trans;
}