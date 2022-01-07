
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rx_cqe_compress_def; } ;
struct TYPE_3__ {TYPE_2__ params; } ;
struct mlx5e_priv {int netdev; int state_lock; int tstamp; TYPE_1__ channels; int mdev; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; } ;
typedef int config ;


 int EFAULT ;
 int EOPNOTSUPP ;
 int ERANGE ;
 int MLX5E_GET_PFLAG (TYPE_2__*,int ) ;
 int MLX5E_PFLAG_RX_CQE_COMPRESS ;
 int MLX5_CAP_GEN (int ,int ) ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int device_frequency_khz ;
 int memcpy (int *,struct hwtstamp_config*,int) ;
 int mlx5_clock_get_ptp_index (int ) ;
 int mlx5e_modify_rx_cqe_compression_locked (struct mlx5e_priv*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (int ,char*,int) ;
 int netdev_update_features (int ) ;
 int netdev_warn (int ,char*) ;

int mlx5e_hwstamp_set(struct mlx5e_priv *priv, struct ifreq *ifr)
{
 struct hwtstamp_config config;
 int err;

 if (!MLX5_CAP_GEN(priv->mdev, device_frequency_khz) ||
     (mlx5_clock_get_ptp_index(priv->mdev) == -1))
  return -EOPNOTSUPP;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;


 switch (config.tx_type) {
 case 129:
 case 128:
  break;
 default:
  return -ERANGE;
 }

 mutex_lock(&priv->state_lock);

 switch (config.rx_filter) {
 case 144:

  mlx5e_modify_rx_cqe_compression_locked(priv, priv->channels.params.rx_cqe_compress_def);
  break;
 case 145:
 case 130:
 case 141:
 case 140:
 case 142:
 case 133:
 case 132:
 case 134:
 case 136:
 case 135:
 case 137:
 case 138:
 case 131:
 case 139:
 case 143:

  if (MLX5E_GET_PFLAG(&priv->channels.params, MLX5E_PFLAG_RX_CQE_COMPRESS))
   netdev_warn(priv->netdev, "Disabling RX cqe compression\n");
  err = mlx5e_modify_rx_cqe_compression_locked(priv, 0);
  if (err) {
   netdev_err(priv->netdev, "Failed disabling cqe compression err=%d\n", err);
   mutex_unlock(&priv->state_lock);
   return err;
  }
  config.rx_filter = 145;
  break;
 default:
  mutex_unlock(&priv->state_lock);
  return -ERANGE;
 }

 memcpy(&priv->tstamp, &config, sizeof(config));
 mutex_unlock(&priv->state_lock);


 netdev_update_features(priv->netdev);

 return copy_to_user(ifr->ifr_data, &config,
       sizeof(config)) ? -EFAULT : 0;
}
