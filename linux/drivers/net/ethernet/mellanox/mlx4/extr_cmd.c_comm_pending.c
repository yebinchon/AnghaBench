
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int comm_toggle; } ;
struct TYPE_5__ {TYPE_1__* comm; } ;
struct mlx4_priv {TYPE_3__ cmd; TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {int slave_read; } ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int readl (int *) ;
 int swab32 (int ) ;

__attribute__((used)) static int comm_pending(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 u32 status = readl(&priv->mfunc.comm->slave_read);

 return (swab32(status) >> 31) != priv->cmd.comm_toggle;
}
