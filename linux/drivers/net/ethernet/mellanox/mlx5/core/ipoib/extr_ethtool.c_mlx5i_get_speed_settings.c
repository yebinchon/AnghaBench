
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;
 int mlx5_ptys_rate_enum_to_int (int ) ;
 int mlx5_ptys_width_enum_to_int (int ) ;

__attribute__((used)) static int mlx5i_get_speed_settings(u16 ib_link_width_oper, u16 ib_proto_oper)
{
 int rate, width;

 rate = mlx5_ptys_rate_enum_to_int(ib_proto_oper);
 if (rate < 0)
  return -EINVAL;
 width = mlx5_ptys_width_enum_to_int(ib_link_width_oper);
 if (width < 0)
  return -EINVAL;

 return rate * width;
}
