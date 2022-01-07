
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5_eswitch {int dev; } ;


 int MLX5_CAP_GEN (int ,int ) ;
 int vhca_id ;

u32 mlx5_eswitch_get_vport_metadata_for_match(const struct mlx5_eswitch *esw,
           u16 vport_num)
{
 return ((MLX5_CAP_GEN(esw->dev, vhca_id) & 0xffff) << 16) | vport_num;
}
