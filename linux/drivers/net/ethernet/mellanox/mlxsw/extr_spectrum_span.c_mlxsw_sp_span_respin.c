
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_span_parms {int * member_0; } ;
struct mlxsw_sp_span_entry {int parms; int to_dev; TYPE_1__* ops; int ref_count; } ;
struct TYPE_4__ {int entries_count; struct mlxsw_sp_span_entry* entries; } ;
struct mlxsw_sp {TYPE_2__ span; } ;
typedef int sparms ;
struct TYPE_3__ {int (* parms ) (int ,struct mlxsw_sp_span_parms*) ;} ;


 int ASSERT_RTNL () ;
 scalar_t__ memcmp (struct mlxsw_sp_span_parms*,int *,int) ;
 int mlxsw_sp_span_entry_configure (struct mlxsw_sp*,struct mlxsw_sp_span_entry*,struct mlxsw_sp_span_parms) ;
 int mlxsw_sp_span_entry_deconfigure (struct mlxsw_sp_span_entry*) ;
 int stub1 (int ,struct mlxsw_sp_span_parms*) ;

void mlxsw_sp_span_respin(struct mlxsw_sp *mlxsw_sp)
{
 int i;
 int err;

 ASSERT_RTNL();
 for (i = 0; i < mlxsw_sp->span.entries_count; i++) {
  struct mlxsw_sp_span_entry *curr = &mlxsw_sp->span.entries[i];
  struct mlxsw_sp_span_parms sparms = {((void*)0)};

  if (!curr->ref_count)
   continue;

  err = curr->ops->parms(curr->to_dev, &sparms);
  if (err)
   continue;

  if (memcmp(&sparms, &curr->parms, sizeof(sparms))) {
   mlxsw_sp_span_entry_deconfigure(curr);
   mlxsw_sp_span_entry_configure(mlxsw_sp, curr, sparms);
  }
 }
}
