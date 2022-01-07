
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_mr_tcam {int acl_block; } ;


 int mlxsw_sp2_mr_tcam_ipv4_fini (struct mlxsw_sp2_mr_tcam*) ;
 int mlxsw_sp2_mr_tcam_ipv6_fini (struct mlxsw_sp2_mr_tcam*) ;
 int mlxsw_sp_acl_block_destroy (int ) ;

__attribute__((used)) static void mlxsw_sp2_mr_tcam_fini(void *priv)
{
 struct mlxsw_sp2_mr_tcam *mr_tcam = priv;

 mlxsw_sp2_mr_tcam_ipv6_fini(mr_tcam);
 mlxsw_sp2_mr_tcam_ipv4_fini(mr_tcam);
 mlxsw_sp_acl_block_destroy(mr_tcam->acl_block);
}
