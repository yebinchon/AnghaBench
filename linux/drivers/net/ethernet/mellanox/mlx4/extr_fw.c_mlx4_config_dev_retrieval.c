
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int flags2; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_config_dev_params {int vxlan_udp_dport; void* rx_csum_flags_port_2; void* rx_csum_flags_port_1; } ;
struct mlx4_config_dev {size_t rx_checksum_val; int vxlan_udp_dport; int member_0; } ;


 size_t ARRAY_SIZE (void**) ;
 size_t CONFIG_DEV_RX_CSUM_MODE_MASK ;
 size_t CONFIG_DEV_RX_CSUM_MODE_PORT1_BIT_OFFSET ;
 size_t CONFIG_DEV_RX_CSUM_MODE_PORT2_BIT_OFFSET ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int MLX4_DEV_CAP_FLAG2_CONFIG_DEV ;
 int be16_to_cpu (int ) ;
 void** config_dev_csum_flags ;
 int mlx4_CONFIG_DEV_get (struct mlx4_dev*,struct mlx4_config_dev*) ;

int mlx4_config_dev_retrieval(struct mlx4_dev *dev,
         struct mlx4_config_dev_params *params)
{
 struct mlx4_config_dev config_dev = {0};
 int err;
 u8 csum_mask;





 if (!(dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_CONFIG_DEV))
  return -EOPNOTSUPP;

 err = mlx4_CONFIG_DEV_get(dev, &config_dev);
 if (err)
  return err;

 csum_mask = (config_dev.rx_checksum_val >> 0) &
   0x7;

 if (csum_mask >= ARRAY_SIZE(config_dev_csum_flags))
  return -EINVAL;
 params->rx_csum_flags_port_1 = config_dev_csum_flags[csum_mask];

 csum_mask = (config_dev.rx_checksum_val >> 4) &
   0x7;

 if (csum_mask >= ARRAY_SIZE(config_dev_csum_flags))
  return -EINVAL;
 params->rx_csum_flags_port_2 = config_dev_csum_flags[csum_mask];

 params->vxlan_udp_dport = be16_to_cpu(config_dev.vxlan_udp_dport);

 return 0;
}
