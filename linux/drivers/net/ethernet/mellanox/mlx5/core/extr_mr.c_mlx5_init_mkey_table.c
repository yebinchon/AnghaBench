
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mkey_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int XA_FLAGS_LOCK_IRQ ;
 int xa_init_flags (int *,int ) ;

void mlx5_init_mkey_table(struct mlx5_core_dev *dev)
{
 xa_init_flags(&dev->priv.mkey_table, XA_FLAGS_LOCK_IRQ);
}
