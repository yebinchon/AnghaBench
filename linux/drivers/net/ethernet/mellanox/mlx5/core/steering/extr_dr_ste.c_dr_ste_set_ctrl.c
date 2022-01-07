
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_ste_htbl_ctrl {int may_grow; int increase_threshold; } ;
struct mlx5dr_ste_htbl {int chunk_size; struct mlx5dr_ste_htbl_ctrl ctrl; } ;


 int DR_CHUNK_SIZE_MAX ;
 int mlx5dr_icm_pool_chunk_size_to_entries (int) ;

__attribute__((used)) static void dr_ste_set_ctrl(struct mlx5dr_ste_htbl *htbl)
{
 struct mlx5dr_ste_htbl_ctrl *ctrl = &htbl->ctrl;
 int num_of_entries;

 htbl->ctrl.may_grow = 1;

 if (htbl->chunk_size == DR_CHUNK_SIZE_MAX - 1)
  htbl->ctrl.may_grow = 0;


 num_of_entries = mlx5dr_icm_pool_chunk_size_to_entries(htbl->chunk_size);
 ctrl->increase_threshold = (num_of_entries + 1) / 2;
}
