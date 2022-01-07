
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ vepa_uplink_rule; } ;
struct TYPE_4__ {TYPE_1__ legacy; } ;
struct mlx5_eswitch {scalar_t__ mode; int state_lock; TYPE_2__ fdb_table; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 int ESW_ALLOWED (struct mlx5_eswitch*) ;
 scalar_t__ MLX5_ESWITCH_LEGACY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_eswitch_get_vepa(struct mlx5_eswitch *esw, u8 *setting)
{
 int err = 0;

 if (!esw)
  return -EOPNOTSUPP;

 if (!ESW_ALLOWED(esw))
  return -EPERM;

 mutex_lock(&esw->state_lock);
 if (esw->mode != MLX5_ESWITCH_LEGACY) {
  err = -EOPNOTSUPP;
  goto out;
 }

 *setting = esw->fdb_table.legacy.vepa_uplink_rule ? 1 : 0;

out:
 mutex_unlock(&esw->state_lock);
 return err;
}
