
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5dr_ste_htbl {int lu_type; } ;
struct mlx5dr_ste {int * hw_ste; } ;
struct mlx5dr_htbl_connect_info {scalar_t__ type; int miss_icm_addr; int hit_next_htbl; } ;
struct mlx5dr_domain_rx_tx {int ste_type; } ;


 scalar_t__ CONNECT_HIT ;
 int dr_ste_always_hit_htbl (struct mlx5dr_ste*,int ) ;
 int mlx5dr_ste_always_miss_addr (struct mlx5dr_ste*,int ) ;
 int mlx5dr_ste_init (int *,int ,int ,int ) ;

void mlx5dr_ste_set_formatted_ste(u16 gvmi,
      struct mlx5dr_domain_rx_tx *nic_dmn,
      struct mlx5dr_ste_htbl *htbl,
      u8 *formatted_ste,
      struct mlx5dr_htbl_connect_info *connect_info)
{
 struct mlx5dr_ste ste = {};

 mlx5dr_ste_init(formatted_ste, htbl->lu_type, nic_dmn->ste_type, gvmi);
 ste.hw_ste = formatted_ste;

 if (connect_info->type == CONNECT_HIT)
  dr_ste_always_hit_htbl(&ste, connect_info->hit_next_htbl);
 else
  mlx5dr_ste_always_miss_addr(&ste, connect_info->miss_icm_addr);
}
