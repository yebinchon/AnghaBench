
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_mr_tcam {int acl_block; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;


 int ENOMEM ;
 int mlxsw_sp2_mr_tcam_ipv4_fini (struct mlxsw_sp2_mr_tcam*) ;
 int mlxsw_sp2_mr_tcam_ipv4_init (struct mlxsw_sp2_mr_tcam*) ;
 int mlxsw_sp2_mr_tcam_ipv6_init (struct mlxsw_sp2_mr_tcam*) ;
 int mlxsw_sp_acl_block_create (struct mlxsw_sp*,int *) ;
 int mlxsw_sp_acl_block_destroy (int ) ;

__attribute__((used)) static int mlxsw_sp2_mr_tcam_init(struct mlxsw_sp *mlxsw_sp, void *priv)
{
 struct mlxsw_sp2_mr_tcam *mr_tcam = priv;
 int err;

 mr_tcam->mlxsw_sp = mlxsw_sp;
 mr_tcam->acl_block = mlxsw_sp_acl_block_create(mlxsw_sp, ((void*)0));
 if (!mr_tcam->acl_block)
  return -ENOMEM;

 err = mlxsw_sp2_mr_tcam_ipv4_init(mr_tcam);
 if (err)
  goto err_ipv4_init;

 err = mlxsw_sp2_mr_tcam_ipv6_init(mr_tcam);
 if (err)
  goto err_ipv6_init;

 return 0;

err_ipv6_init:
 mlxsw_sp2_mr_tcam_ipv4_fini(mr_tcam);
err_ipv4_init:
 mlxsw_sp_acl_block_destroy(mr_tcam->acl_block);
 return err;
}
