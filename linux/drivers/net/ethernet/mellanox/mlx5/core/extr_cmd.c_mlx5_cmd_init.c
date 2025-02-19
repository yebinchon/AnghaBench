
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mlx5_cmd {int log_sz; int log_stride; int checksum_disabled; int max_reg_cmds; unsigned long bitmask; int cmdif_rev; int pool; int wq; int wq_name; int mode; scalar_t__ dma; int pages_sem; int sem; TYPE_2__* stats; int token_lock; int alloc_lock; } ;
struct mlx5_core_dev {TYPE_1__* iseg; int device; struct mlx5_cmd cmd; } ;
struct mlx5_cmd_prot_block {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int cmdq_addr_l_sz; int cmdq_addr_h; int cmdif_rev_fw_sub; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int CMD_IF_REV ;
 int CMD_MODE_POLLING ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int MLX5_ADAPTER_PAGE_SHIFT ;
 int MLX5_MAX_COMMANDS ;
 int alloc_cmd_page (struct mlx5_core_dev*,struct mlx5_cmd*) ;
 int cmdif_rev (struct mlx5_core_dev*) ;
 int create_debugfs_files (struct mlx5_core_dev*) ;
 int create_msg_cache (struct mlx5_core_dev*) ;
 int create_singlethread_workqueue (int ) ;
 int destroy_msg_cache (struct mlx5_core_dev*) ;
 int dma_pool_create (char*,int ,int,int,int ) ;
 int dma_pool_destroy (int ) ;
 int free_cmd_page (struct mlx5_core_dev*,struct mlx5_cmd*) ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;
 int memset (struct mlx5_cmd*,int ,int) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,unsigned long long) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,...) ;
 int roundup_pow_of_two (int) ;
 int sema_init (int *,int) ;
 int set_wqname (struct mlx5_core_dev*) ;
 int spin_lock_init (int *) ;
 int wmb () ;

int mlx5_cmd_init(struct mlx5_core_dev *dev)
{
 int size = sizeof(struct mlx5_cmd_prot_block);
 int align = roundup_pow_of_two(size);
 struct mlx5_cmd *cmd = &dev->cmd;
 u32 cmd_h, cmd_l;
 u16 cmd_if_rev;
 int err;
 int i;

 memset(cmd, 0, sizeof(*cmd));
 cmd_if_rev = cmdif_rev(dev);
 if (cmd_if_rev != CMD_IF_REV) {
  mlx5_core_err(dev,
         "Driver cmdif rev(%d) differs from firmware's(%d)\n",
         CMD_IF_REV, cmd_if_rev);
  return -EINVAL;
 }

 cmd->pool = dma_pool_create("mlx5_cmd", dev->device, size, align, 0);
 if (!cmd->pool)
  return -ENOMEM;

 err = alloc_cmd_page(dev, cmd);
 if (err)
  goto err_free_pool;

 cmd_l = ioread32be(&dev->iseg->cmdq_addr_l_sz) & 0xff;
 cmd->log_sz = cmd_l >> 4 & 0xf;
 cmd->log_stride = cmd_l & 0xf;
 if (1 << cmd->log_sz > MLX5_MAX_COMMANDS) {
  mlx5_core_err(dev, "firmware reports too many outstanding commands %d\n",
         1 << cmd->log_sz);
  err = -EINVAL;
  goto err_free_page;
 }

 if (cmd->log_sz + cmd->log_stride > MLX5_ADAPTER_PAGE_SHIFT) {
  mlx5_core_err(dev, "command queue size overflow\n");
  err = -EINVAL;
  goto err_free_page;
 }

 cmd->checksum_disabled = 1;
 cmd->max_reg_cmds = (1 << cmd->log_sz) - 1;
 cmd->bitmask = (1UL << cmd->max_reg_cmds) - 1;

 cmd->cmdif_rev = ioread32be(&dev->iseg->cmdif_rev_fw_sub) >> 16;
 if (cmd->cmdif_rev > CMD_IF_REV) {
  mlx5_core_err(dev, "driver does not support command interface version. driver %d, firmware %d\n",
         CMD_IF_REV, cmd->cmdif_rev);
  err = -EOPNOTSUPP;
  goto err_free_page;
 }

 spin_lock_init(&cmd->alloc_lock);
 spin_lock_init(&cmd->token_lock);
 for (i = 0; i < ARRAY_SIZE(cmd->stats); i++)
  spin_lock_init(&cmd->stats[i].lock);

 sema_init(&cmd->sem, cmd->max_reg_cmds);
 sema_init(&cmd->pages_sem, 1);

 cmd_h = (u32)((u64)(cmd->dma) >> 32);
 cmd_l = (u32)(cmd->dma);
 if (cmd_l & 0xfff) {
  mlx5_core_err(dev, "invalid command queue address\n");
  err = -ENOMEM;
  goto err_free_page;
 }

 iowrite32be(cmd_h, &dev->iseg->cmdq_addr_h);
 iowrite32be(cmd_l, &dev->iseg->cmdq_addr_l_sz);


 wmb();

 mlx5_core_dbg(dev, "descriptor at dma 0x%llx\n", (unsigned long long)(cmd->dma));

 cmd->mode = CMD_MODE_POLLING;

 create_msg_cache(dev);

 set_wqname(dev);
 cmd->wq = create_singlethread_workqueue(cmd->wq_name);
 if (!cmd->wq) {
  mlx5_core_err(dev, "failed to create command workqueue\n");
  err = -ENOMEM;
  goto err_cache;
 }

 create_debugfs_files(dev);

 return 0;

err_cache:
 destroy_msg_cache(dev);

err_free_page:
 free_cmd_page(dev, cmd);

err_free_pool:
 dma_pool_destroy(cmd->pool);

 return err;
}
