
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx5dr_ste_htbl {struct mlx5dr_ste* ste_arr; } ;
struct mlx5dr_ste {int dummy; } ;
struct mlx5dr_matcher_rx_tx {TYPE_1__* e_anchor; } ;
struct mlx5dr_matcher {TYPE_2__* tbl; } ;
struct mlx5dr_domain {int ste_icm_pool; } ;
struct TYPE_6__ {int icm_addr; } ;
struct TYPE_5__ {struct mlx5dr_domain* dmn; } ;
struct TYPE_4__ {TYPE_3__* chunk; } ;


 int DR_CHUNK_SIZE_1 ;
 int MLX5DR_STE_LU_TYPE_DONT_CARE ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*) ;
 int mlx5dr_htbl_get (struct mlx5dr_ste_htbl*) ;
 struct mlx5dr_ste_htbl* mlx5dr_ste_htbl_alloc (int ,int ,int ,int ) ;
 int mlx5dr_ste_set_miss_addr (int *,int ) ;

__attribute__((used)) static struct mlx5dr_ste *
dr_rule_create_collision_htbl(struct mlx5dr_matcher *matcher,
         struct mlx5dr_matcher_rx_tx *nic_matcher,
         u8 *hw_ste)
{
 struct mlx5dr_domain *dmn = matcher->tbl->dmn;
 struct mlx5dr_ste_htbl *new_htbl;
 struct mlx5dr_ste *ste;


 new_htbl = mlx5dr_ste_htbl_alloc(dmn->ste_icm_pool,
      DR_CHUNK_SIZE_1,
      MLX5DR_STE_LU_TYPE_DONT_CARE,
      0);
 if (!new_htbl) {
  mlx5dr_dbg(dmn, "Failed allocating collision table\n");
  return ((void*)0);
 }


 ste = new_htbl->ste_arr;
 mlx5dr_ste_set_miss_addr(hw_ste, nic_matcher->e_anchor->chunk->icm_addr);
 mlx5dr_htbl_get(new_htbl);

 return ste;
}
