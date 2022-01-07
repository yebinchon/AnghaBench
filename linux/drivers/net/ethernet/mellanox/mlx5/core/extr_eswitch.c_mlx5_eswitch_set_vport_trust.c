
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int trusted; } ;
struct mlx5_vport {scalar_t__ enabled; TYPE_1__ info; } ;
struct mlx5_eswitch {int state_lock; } ;


 int EPERM ;
 int ESW_ALLOWED (struct mlx5_eswitch*) ;
 scalar_t__ IS_ERR (struct mlx5_vport*) ;
 int PTR_ERR (struct mlx5_vport*) ;
 int esw_vport_change_handle_locked (struct mlx5_vport*) ;
 struct mlx5_vport* mlx5_eswitch_get_vport (struct mlx5_eswitch*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_eswitch_set_vport_trust(struct mlx5_eswitch *esw,
     u16 vport, bool setting)
{
 struct mlx5_vport *evport = mlx5_eswitch_get_vport(esw, vport);

 if (!ESW_ALLOWED(esw))
  return -EPERM;
 if (IS_ERR(evport))
  return PTR_ERR(evport);

 mutex_lock(&esw->state_lock);
 evport->info.trusted = setting;
 if (evport->enabled)
  esw_vport_change_handle_locked(evport);
 mutex_unlock(&esw->state_lock);

 return 0;
}
