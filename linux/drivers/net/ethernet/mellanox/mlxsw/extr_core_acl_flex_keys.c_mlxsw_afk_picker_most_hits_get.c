
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_afk_picker {TYPE_1__* hits; } ;
struct mlxsw_afk {int blocks_count; } ;
struct TYPE_2__ {int total; } ;


 int EINVAL ;

__attribute__((used)) static int mlxsw_afk_picker_most_hits_get(struct mlxsw_afk *mlxsw_afk,
       struct mlxsw_afk_picker *picker)
{
 int most_index = -EINVAL;
 int most_hits = 0;
 int i;

 for (i = 0; i < mlxsw_afk->blocks_count; i++) {
  if (picker->hits[i].total > most_hits) {
   most_hits = picker->hits[i].total;
   most_index = i;
  }
 }
 return most_index;
}
