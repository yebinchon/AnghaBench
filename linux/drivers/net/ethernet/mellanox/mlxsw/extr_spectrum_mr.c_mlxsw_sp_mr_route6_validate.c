
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mr_mfc {int dummy; } ;
struct mlxsw_sp_mr_table {TYPE_2__* mlxsw_sp; } ;
struct mfc6_cache {int mf6c_mcastgrp; int mf6c_origin; } ;
struct TYPE_4__ {TYPE_1__* bus_info; } ;
struct TYPE_3__ {int dev; } ;


 int dev_warn (int ,char*) ;
 scalar_t__ ipv6_addr_any (int *) ;

__attribute__((used)) static bool
mlxsw_sp_mr_route6_validate(const struct mlxsw_sp_mr_table *mr_table,
       const struct mr_mfc *c)
{
 struct mfc6_cache *mfc = (struct mfc6_cache *) c;




 if (ipv6_addr_any(&mfc->mf6c_origin) &&
     ipv6_addr_any(&mfc->mf6c_mcastgrp)) {
  dev_warn(mr_table->mlxsw_sp->bus_info->dev,
    "Offloading proxy routes is not supported.\n");
  return 0;
 }
 return 1;
}
