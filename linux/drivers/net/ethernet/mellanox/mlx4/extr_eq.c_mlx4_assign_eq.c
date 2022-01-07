
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_12__ {int pool_lock; int pool_bm; } ;
struct TYPE_11__ {struct mlx4_eq* eq; int * irq_names; } ;
struct mlx4_priv {TYPE_6__ msix_ctl; TYPE_5__ eq_table; } ;
struct TYPE_8__ {int ports; } ;
struct mlx4_eq {scalar_t__ ref_count; int have_irq; int irq; TYPE_2__ actv_ports; } ;
struct TYPE_7__ {int num_comp_vectors; } ;
struct mlx4_dev {int flags; TYPE_4__* persist; TYPE_1__ caps; } ;
struct TYPE_10__ {TYPE_3__* pdev; } ;
struct TYPE_9__ {int dev; } ;


 int ENOSPC ;
 int MLX4_CQ_TO_EQ_VECTOR (int) ;
 int MLX4_EQ_ASYNC ;
 int MLX4_EQ_TO_CQ_VECTOR (int) ;
 int MLX4_FLAG_MSI_X ;
 int MLX4_IRQNAME_SIZE ;
 int clear_bit (int,int ) ;
 char* dev_name (int *) ;
 int eq_set_ci (struct mlx4_eq*,int) ;
 scalar_t__ mlx4_get_eqs_per_port (struct mlx4_dev*,int ) ;
 int mlx4_msi_x_interrupt ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_set_eq_affinity_hint (struct mlx4_priv*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_irq (int ,int ,int ,int *,struct mlx4_eq*) ;
 int set_bit (int,int ) ;
 int snprintf (int *,int,char*,int,char*) ;
 scalar_t__ test_bit (int,int ) ;

int mlx4_assign_eq(struct mlx4_dev *dev, u8 port, int *vector)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int err = 0, i = 0;
 u32 min_ref_count_val = (u32)-1;
 int requested_vector = MLX4_CQ_TO_EQ_VECTOR(*vector);
 int *prequested_vector = ((void*)0);


 mutex_lock(&priv->msix_ctl.pool_lock);
 if (requested_vector < (dev->caps.num_comp_vectors + 1) &&
     (requested_vector >= 0) &&
     (requested_vector != MLX4_EQ_ASYNC)) {
  if (test_bit(port - 1,
        priv->eq_table.eq[requested_vector].actv_ports.ports)) {
   prequested_vector = &requested_vector;
  } else {
   struct mlx4_eq *eq;

   for (i = 1; i < port;
        requested_vector += mlx4_get_eqs_per_port(dev, i++))
    ;

   eq = &priv->eq_table.eq[requested_vector];
   if (requested_vector < dev->caps.num_comp_vectors + 1 &&
       test_bit(port - 1, eq->actv_ports.ports)) {
    prequested_vector = &requested_vector;
   }
  }
 }

 if (!prequested_vector) {
  requested_vector = -1;
  for (i = 0; min_ref_count_val && i < dev->caps.num_comp_vectors + 1;
       i++) {
   struct mlx4_eq *eq = &priv->eq_table.eq[i];

   if (min_ref_count_val > eq->ref_count &&
       test_bit(port - 1, eq->actv_ports.ports)) {
    min_ref_count_val = eq->ref_count;
    requested_vector = i;
   }
  }

  if (requested_vector < 0) {
   err = -ENOSPC;
   goto err_unlock;
  }

  prequested_vector = &requested_vector;
 }

 if (!test_bit(*prequested_vector, priv->msix_ctl.pool_bm) &&
     dev->flags & MLX4_FLAG_MSI_X) {
  set_bit(*prequested_vector, priv->msix_ctl.pool_bm);
  snprintf(priv->eq_table.irq_names +
    *prequested_vector * MLX4_IRQNAME_SIZE,
    MLX4_IRQNAME_SIZE, "mlx4-%d@%s",
    *prequested_vector, dev_name(&dev->persist->pdev->dev));

  err = request_irq(priv->eq_table.eq[*prequested_vector].irq,
      mlx4_msi_x_interrupt, 0,
      &priv->eq_table.irq_names[*prequested_vector << 5],
      priv->eq_table.eq + *prequested_vector);

  if (err) {
   clear_bit(*prequested_vector, priv->msix_ctl.pool_bm);
   *prequested_vector = -1;
  } else {



   eq_set_ci(&priv->eq_table.eq[*prequested_vector], 1);
   priv->eq_table.eq[*prequested_vector].have_irq = 1;
  }
 }

 if (!err && *prequested_vector >= 0)
  priv->eq_table.eq[*prequested_vector].ref_count++;

err_unlock:
 mutex_unlock(&priv->msix_ctl.pool_lock);

 if (!err && *prequested_vector >= 0)
  *vector = MLX4_EQ_TO_CQ_VECTOR(*prequested_vector);
 else
  *vector = 0;

 return err;
}
