
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int max_tc_eth; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int MLX4_TC_MAX_NUMBER ;

int mlx4_max_tc(struct mlx4_dev *dev)
{
 u8 num_tc = dev->caps.max_tc_eth;

 if (!num_tc)
  num_tc = MLX4_TC_MAX_NUMBER;

 return num_tc;
}
