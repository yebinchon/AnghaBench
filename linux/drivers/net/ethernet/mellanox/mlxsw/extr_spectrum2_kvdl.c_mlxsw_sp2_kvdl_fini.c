
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_kvdl {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp2_kvdl_parts_fini (struct mlxsw_sp2_kvdl*) ;

__attribute__((used)) static void mlxsw_sp2_kvdl_fini(struct mlxsw_sp *mlxsw_sp, void *priv)
{
 struct mlxsw_sp2_kvdl *kvdl = priv;

 mlxsw_sp2_kvdl_parts_fini(kvdl);
}
