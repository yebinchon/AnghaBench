
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int spoofchk; int mac; } ;
struct mlx5_vport {TYPE_1__ info; scalar_t__ enabled; int vport; } ;
struct mlx5_eswitch {scalar_t__ mode; int state_lock; int dev; } ;


 int EPERM ;
 int ESW_ALLOWED (struct mlx5_eswitch*) ;
 scalar_t__ IS_ERR (struct mlx5_vport*) ;
 scalar_t__ MLX5_ESWITCH_LEGACY ;
 int PTR_ERR (struct mlx5_vport*) ;
 int esw_vport_ingress_config (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int is_valid_ether_addr (int ) ;
 int mlx5_core_warn (int ,char*,int ) ;
 struct mlx5_vport* mlx5_eswitch_get_vport (struct mlx5_eswitch*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_eswitch_set_vport_spoofchk(struct mlx5_eswitch *esw,
        u16 vport, bool spoofchk)
{
 struct mlx5_vport *evport = mlx5_eswitch_get_vport(esw, vport);
 bool pschk;
 int err = 0;

 if (!ESW_ALLOWED(esw))
  return -EPERM;
 if (IS_ERR(evport))
  return PTR_ERR(evport);

 mutex_lock(&esw->state_lock);
 pschk = evport->info.spoofchk;
 evport->info.spoofchk = spoofchk;
 if (pschk && !is_valid_ether_addr(evport->info.mac))
  mlx5_core_warn(esw->dev,
          "Spoofchk in set while MAC is invalid, vport(%d)\n",
          evport->vport);
 if (evport->enabled && esw->mode == MLX5_ESWITCH_LEGACY)
  err = esw_vport_ingress_config(esw, evport);
 if (err)
  evport->info.spoofchk = pschk;
 mutex_unlock(&esw->state_lock);

 return err;
}
