
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int expires; } ;
struct TYPE_8__ {TYPE_4__ timer; int * map; int list; } ;
struct TYPE_7__ {int catas_size; scalar_t__ catas_offset; int catas_bar; } ;
struct mlx4_priv {TYPE_3__ catas_err; TYPE_2__ fw; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_6__ {int pdev; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MLX4_CATAS_POLL_INTERVAL ;
 int add_timer (TYPE_4__*) ;
 int * ioremap (scalar_t__,int) ;
 scalar_t__ jiffies ;
 int mlx4_is_slave (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,unsigned long long) ;
 scalar_t__ pci_resource_start (int ,int ) ;
 int poll_catas ;
 int round_jiffies (scalar_t__) ;
 int timer_setup (TYPE_4__*,int ,int ) ;

void mlx4_start_catas_poll(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 phys_addr_t addr;

 INIT_LIST_HEAD(&priv->catas_err.list);
 timer_setup(&priv->catas_err.timer, poll_catas, 0);
 priv->catas_err.map = ((void*)0);

 if (!mlx4_is_slave(dev)) {
  addr = pci_resource_start(dev->persist->pdev,
       priv->fw.catas_bar) +
       priv->fw.catas_offset;

  priv->catas_err.map = ioremap(addr, priv->fw.catas_size * 4);
  if (!priv->catas_err.map) {
   mlx4_warn(dev, "Failed to map internal error buffer at 0x%llx\n",
      (unsigned long long)addr);
   return;
  }
 }

 priv->catas_err.timer.expires =
  round_jiffies(jiffies + MLX4_CATAS_POLL_INTERVAL);
 add_timer(&priv->catas_err.timer);
}
