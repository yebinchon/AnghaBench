
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_span_entry {int id; int bound_ports_list; } ;
struct TYPE_2__ {int entries_count; struct mlxsw_sp_span_entry* entries; } ;
struct mlxsw_sp {TYPE_1__ span; int core; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_SPAN ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_CORE_RES_VALID (int ,int ) ;
 struct mlxsw_sp_span_entry* kcalloc (int,int,int ) ;

int mlxsw_sp_span_init(struct mlxsw_sp *mlxsw_sp)
{
 int i;

 if (!MLXSW_CORE_RES_VALID(mlxsw_sp->core, MAX_SPAN))
  return -EIO;

 mlxsw_sp->span.entries_count = MLXSW_CORE_RES_GET(mlxsw_sp->core,
         MAX_SPAN);
 mlxsw_sp->span.entries = kcalloc(mlxsw_sp->span.entries_count,
      sizeof(struct mlxsw_sp_span_entry),
      GFP_KERNEL);
 if (!mlxsw_sp->span.entries)
  return -ENOMEM;

 for (i = 0; i < mlxsw_sp->span.entries_count; i++) {
  struct mlxsw_sp_span_entry *curr = &mlxsw_sp->span.entries[i];

  INIT_LIST_HEAD(&curr->bound_ports_list);
  curr->id = i;
 }

 return 0;
}
