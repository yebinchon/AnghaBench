
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int dummy; } ;
struct fs_prio {int dummy; } ;


 struct mlx5_flow_table* find_closest_ft (struct fs_prio*,int) ;

__attribute__((used)) static struct mlx5_flow_table *find_next_chained_ft(struct fs_prio *prio)
{
 return find_closest_ft(prio, 0);
}
