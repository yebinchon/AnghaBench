
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ min_rate; scalar_t__ max_rate; } ;
struct TYPE_3__ {int bw_share; } ;
struct mlx5_vport {TYPE_2__ info; TYPE_1__ qos; } ;
struct mlx5_eswitch {int state_lock; int dev; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 int ESW_ALLOWED (struct mlx5_eswitch*) ;
 scalar_t__ IS_ERR (struct mlx5_vport*) ;
 void* MLX5_CAP_QOS (int ,int ) ;
 scalar_t__ MLX5_MIN_BW_SHARE ;
 int PTR_ERR (struct mlx5_vport*) ;
 scalar_t__ calculate_vports_min_rate_divider (struct mlx5_eswitch*) ;
 int esw_bw_share ;
 int esw_rate_limit ;
 int esw_vport_qos_config (struct mlx5_eswitch*,struct mlx5_vport*,scalar_t__,int ) ;
 int max_tsar_bw_share ;
 struct mlx5_vport* mlx5_eswitch_get_vport (struct mlx5_eswitch*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int normalize_vports_min_rate (struct mlx5_eswitch*,scalar_t__) ;

int mlx5_eswitch_set_vport_rate(struct mlx5_eswitch *esw, u16 vport,
    u32 max_rate, u32 min_rate)
{
 struct mlx5_vport *evport = mlx5_eswitch_get_vport(esw, vport);
 u32 fw_max_bw_share;
 u32 previous_min_rate;
 u32 divider;
 bool min_rate_supported;
 bool max_rate_supported;
 int err = 0;

 if (!ESW_ALLOWED(esw))
  return -EPERM;
 if (IS_ERR(evport))
  return PTR_ERR(evport);

 fw_max_bw_share = MLX5_CAP_QOS(esw->dev, max_tsar_bw_share);
 min_rate_supported = MLX5_CAP_QOS(esw->dev, esw_bw_share) &&
    fw_max_bw_share >= MLX5_MIN_BW_SHARE;
 max_rate_supported = MLX5_CAP_QOS(esw->dev, esw_rate_limit);

 if ((min_rate && !min_rate_supported) || (max_rate && !max_rate_supported))
  return -EOPNOTSUPP;

 mutex_lock(&esw->state_lock);

 if (min_rate == evport->info.min_rate)
  goto set_max_rate;

 previous_min_rate = evport->info.min_rate;
 evport->info.min_rate = min_rate;
 divider = calculate_vports_min_rate_divider(esw);
 err = normalize_vports_min_rate(esw, divider);
 if (err) {
  evport->info.min_rate = previous_min_rate;
  goto unlock;
 }

set_max_rate:
 if (max_rate == evport->info.max_rate)
  goto unlock;

 err = esw_vport_qos_config(esw, evport, max_rate, evport->qos.bw_share);
 if (!err)
  evport->info.max_rate = max_rate;

unlock:
 mutex_unlock(&esw->state_lock);
 return err;
}
