
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_mr_route {TYPE_1__* mfc; } ;
struct TYPE_2__ {int mfc_flags; } ;


 int MFC_OFFLOAD ;

__attribute__((used)) static void mlxsw_sp_mr_mfc_offload_set(struct mlxsw_sp_mr_route *mr_route,
     bool offload)
{
 if (offload)
  mr_route->mfc->mfc_flags |= MFC_OFFLOAD;
 else
  mr_route->mfc->mfc_flags &= ~MFC_OFFLOAD;
}
