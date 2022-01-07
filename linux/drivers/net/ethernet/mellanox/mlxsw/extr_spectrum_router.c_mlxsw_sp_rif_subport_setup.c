
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif_subport {int system_port; int lag_id; scalar_t__ lag; int vid; int ref_count; } ;
struct mlxsw_sp_rif_params {int system_port; int lag_id; scalar_t__ lag; int vid; } ;
struct mlxsw_sp_rif {int dummy; } ;


 struct mlxsw_sp_rif_subport* mlxsw_sp_rif_subport_rif (struct mlxsw_sp_rif*) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static void mlxsw_sp_rif_subport_setup(struct mlxsw_sp_rif *rif,
           const struct mlxsw_sp_rif_params *params)
{
 struct mlxsw_sp_rif_subport *rif_subport;

 rif_subport = mlxsw_sp_rif_subport_rif(rif);
 refcount_set(&rif_subport->ref_count, 1);
 rif_subport->vid = params->vid;
 rif_subport->lag = params->lag;
 if (params->lag)
  rif_subport->lag_id = params->lag_id;
 else
  rif_subport->system_port = params->system_port;
}
