
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mr_mfc {int dummy; } ;
struct mlxsw_sp_mr_table {TYPE_2__* mlxsw_sp; } ;
struct mfc_cache {scalar_t__ mfc_origin; scalar_t__ mfc_mcastgrp; } ;
struct TYPE_4__ {TYPE_1__* bus_info; } ;
struct TYPE_3__ {int dev; } ;


 int INADDR_ANY ;
 int dev_warn (int ,char*) ;
 scalar_t__ htonl (int ) ;

__attribute__((used)) static bool
mlxsw_sp_mr_route4_validate(const struct mlxsw_sp_mr_table *mr_table,
       const struct mr_mfc *c)
{
 struct mfc_cache *mfc = (struct mfc_cache *) c;




 if (mfc->mfc_origin == htonl(INADDR_ANY) &&
     mfc->mfc_mcastgrp == htonl(INADDR_ANY)) {
  dev_warn(mr_table->mlxsw_sp->bus_info->dev,
    "Offloading proxy routes is not supported.\n");
  return 0;
 }
 return 1;
}
