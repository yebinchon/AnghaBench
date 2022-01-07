
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_rl_table {int max_size; struct mlx5_rl_entry* rl_entry; } ;
struct TYPE_2__ {int rate; } ;
struct mlx5_rl_entry {TYPE_1__ rl; } ;
struct mlx5_rate_limit {int dummy; } ;


 scalar_t__ mlx5_rl_are_equal (TYPE_1__*,struct mlx5_rate_limit*) ;

__attribute__((used)) static struct mlx5_rl_entry *find_rl_entry(struct mlx5_rl_table *table,
        struct mlx5_rate_limit *rl)
{
 struct mlx5_rl_entry *ret_entry = ((void*)0);
 bool empty_found = 0;
 int i;

 for (i = 0; i < table->max_size; i++) {
  if (mlx5_rl_are_equal(&table->rl_entry[i].rl, rl))
   return &table->rl_entry[i];
  if (!empty_found && !table->rl_entry[i].rl.rate) {
   empty_found = 1;
   ret_entry = &table->rl_entry[i];
  }
 }

 return ret_entry;
}
