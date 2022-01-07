
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_table_rx_tx {int s_anchor; int default_icm_addr; struct mlx5dr_domain_rx_tx* nic_dmn; } ;
struct mlx5dr_htbl_connect_info {int miss_icm_addr; int type; } ;
struct mlx5dr_domain_rx_tx {int default_icm_addr; } ;
struct mlx5dr_domain {int ste_icm_pool; } ;


 int CONNECT_MISS ;
 int DR_CHUNK_SIZE_1 ;
 int ENOMEM ;
 int MLX5DR_STE_LU_TYPE_DONT_CARE ;
 int mlx5dr_htbl_get (int ) ;
 int mlx5dr_ste_htbl_alloc (int ,int ,int ,int ) ;
 int mlx5dr_ste_htbl_free (int ) ;
 int mlx5dr_ste_htbl_init_and_postsend (struct mlx5dr_domain*,struct mlx5dr_domain_rx_tx*,int ,struct mlx5dr_htbl_connect_info*,int) ;

__attribute__((used)) static int dr_table_init_nic(struct mlx5dr_domain *dmn,
        struct mlx5dr_table_rx_tx *nic_tbl)
{
 struct mlx5dr_domain_rx_tx *nic_dmn = nic_tbl->nic_dmn;
 struct mlx5dr_htbl_connect_info info;
 int ret;

 nic_tbl->default_icm_addr = nic_dmn->default_icm_addr;

 nic_tbl->s_anchor = mlx5dr_ste_htbl_alloc(dmn->ste_icm_pool,
        DR_CHUNK_SIZE_1,
        MLX5DR_STE_LU_TYPE_DONT_CARE,
        0);
 if (!nic_tbl->s_anchor)
  return -ENOMEM;

 info.type = CONNECT_MISS;
 info.miss_icm_addr = nic_dmn->default_icm_addr;
 ret = mlx5dr_ste_htbl_init_and_postsend(dmn, nic_dmn,
      nic_tbl->s_anchor,
      &info, 1);
 if (ret)
  goto free_s_anchor;

 mlx5dr_htbl_get(nic_tbl->s_anchor);

 return 0;

free_s_anchor:
 mlx5dr_ste_htbl_free(nic_tbl->s_anchor);
 return ret;
}
