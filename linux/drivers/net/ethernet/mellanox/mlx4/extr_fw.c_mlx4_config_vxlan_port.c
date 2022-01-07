
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;
struct mlx4_config_dev {int vxlan_udp_dport; int update_flags; } ;
typedef int config_dev ;
typedef int __be16 ;


 int MLX4_VXLAN_UDP_DPORT ;
 int cpu_to_be32 (int ) ;
 int memset (struct mlx4_config_dev*,int ,int) ;
 int mlx4_CONFIG_DEV_set (struct mlx4_dev*,struct mlx4_config_dev*) ;

int mlx4_config_vxlan_port(struct mlx4_dev *dev, __be16 udp_port)
{
 struct mlx4_config_dev config_dev;

 memset(&config_dev, 0, sizeof(config_dev));
 config_dev.update_flags = cpu_to_be32(MLX4_VXLAN_UDP_DPORT);
 config_dev.vxlan_udp_dport = udp_port;

 return mlx4_CONFIG_DEV_set(dev, &config_dev);
}
