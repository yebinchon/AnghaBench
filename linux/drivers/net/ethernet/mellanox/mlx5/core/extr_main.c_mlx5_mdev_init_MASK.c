#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {TYPE_2__ wc_head; TYPE_1__ reg_head; } ;
struct mlx5_priv {int /*<<< orphan*/  dbg_root; int /*<<< orphan*/  mkey_lock; int /*<<< orphan*/  pgdir_list; int /*<<< orphan*/  pgdir_mutex; int /*<<< orphan*/  alloc_mutex; TYPE_3__ bfregs; int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  ctx_list; } ;
struct mlx5_core_dev {struct mlx5_priv priv; int /*<<< orphan*/  device; int /*<<< orphan*/  intf_state_mutex; int /*<<< orphan*/ * profile; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5_debugfs_root ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int FUNC6 (struct mlx5_core_dev*) ; 
 int FUNC7 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * profile ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct mlx5_core_dev *dev, int profile_idx)
{
	struct mlx5_priv *priv = &dev->priv;
	int err;

	dev->profile = &profile[profile_idx];

	FUNC0(&priv->ctx_list);
	FUNC9(&priv->ctx_lock);
	FUNC8(&dev->intf_state_mutex);

	FUNC8(&priv->bfregs.reg_head.lock);
	FUNC8(&priv->bfregs.wc_head.lock);
	FUNC0(&priv->bfregs.reg_head.list);
	FUNC0(&priv->bfregs.wc_head.list);

	FUNC8(&priv->alloc_mutex);
	FUNC8(&priv->pgdir_mutex);
	FUNC0(&priv->pgdir_list);
	FUNC9(&priv->mkey_lock);

	priv->dbg_root = FUNC1(FUNC4(dev->device),
					    mlx5_debugfs_root);
	if (!priv->dbg_root) {
		FUNC3(dev->device, "mlx5_core: error, Cannot create debugfs dir, aborting\n");
		return -ENOMEM;
	}

	err = FUNC6(dev);
	if (err)
		goto err_health_init;

	err = FUNC7(dev);
	if (err)
		goto err_pagealloc_init;

	return 0;

err_pagealloc_init:
	FUNC5(dev);
err_health_init:
	FUNC2(dev->priv.dbg_root);

	return err;
}