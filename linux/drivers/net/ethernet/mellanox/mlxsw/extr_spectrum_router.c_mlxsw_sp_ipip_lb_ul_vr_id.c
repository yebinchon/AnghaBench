
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp_vr {int id; } ;
struct TYPE_2__ {int mlxsw_sp; int dev; } ;
struct mlxsw_sp_rif_ipip_lb {TYPE_1__ common; } ;


 int IS_ERR (struct mlxsw_sp_vr*) ;
 scalar_t__ WARN_ON (int ) ;
 int mlxsw_sp_ipip_dev_ul_tb_id (int ) ;
 struct mlxsw_sp_vr* mlxsw_sp_vr_get (int ,int ,int *) ;

u16 mlxsw_sp_ipip_lb_ul_vr_id(const struct mlxsw_sp_rif_ipip_lb *lb_rif)
{
 u32 ul_tb_id = mlxsw_sp_ipip_dev_ul_tb_id(lb_rif->common.dev);
 struct mlxsw_sp_vr *ul_vr;

 ul_vr = mlxsw_sp_vr_get(lb_rif->common.mlxsw_sp, ul_tb_id, ((void*)0));
 if (WARN_ON(IS_ERR(ul_vr)))
  return 0;

 return ul_vr->id;
}
