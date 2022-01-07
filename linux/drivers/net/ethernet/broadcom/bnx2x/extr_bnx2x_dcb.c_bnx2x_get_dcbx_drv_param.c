
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dcbx_features {int ets; int pfc; int app; } ;
struct bnx2x {int dummy; } ;


 int bnx2x_dcbx_get_ap_feature (struct bnx2x*,int *,int ) ;
 int bnx2x_dcbx_get_ets_feature (struct bnx2x*,int *,int ) ;
 int bnx2x_dcbx_get_pfc_feature (struct bnx2x*,int *,int ) ;
 int bnx2x_dcbx_map_nw (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_get_dcbx_drv_param(struct bnx2x *bp,
         struct dcbx_features *features,
         u32 error)
{
 bnx2x_dcbx_get_ap_feature(bp, &features->app, error);

 bnx2x_dcbx_get_pfc_feature(bp, &features->pfc, error);

 bnx2x_dcbx_get_ets_feature(bp, &features->ets, error);

 bnx2x_dcbx_map_nw(bp);
}
