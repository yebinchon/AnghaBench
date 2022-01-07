
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_block {int dummy; } ;


 int mlxsw_afa_block_destroy (struct mlxsw_afa_block*) ;

__attribute__((used)) static void
mlxsw_sp_mr_tcam_afa_block_destroy(struct mlxsw_afa_block *afa_block)
{
 mlxsw_afa_block_destroy(afa_block);
}
