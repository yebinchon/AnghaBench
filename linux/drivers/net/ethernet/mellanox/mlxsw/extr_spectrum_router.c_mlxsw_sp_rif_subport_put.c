
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif_subport {int ref_count; } ;
struct mlxsw_sp_rif {int dummy; } ;


 int mlxsw_sp_rif_destroy (struct mlxsw_sp_rif*) ;
 struct mlxsw_sp_rif_subport* mlxsw_sp_rif_subport_rif (struct mlxsw_sp_rif*) ;
 int refcount_dec_and_test (int *) ;

__attribute__((used)) static void mlxsw_sp_rif_subport_put(struct mlxsw_sp_rif *rif)
{
 struct mlxsw_sp_rif_subport *rif_subport;

 rif_subport = mlxsw_sp_rif_subport_rif(rif);
 if (!refcount_dec_and_test(&rif_subport->ref_count))
  return;

 mlxsw_sp_rif_destroy(rif);
}
