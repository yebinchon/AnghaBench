
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd_work_ent {int dummy; } ;


 int kfree (struct mlx5_cmd_work_ent*) ;

__attribute__((used)) static void free_cmd(struct mlx5_cmd_work_ent *ent)
{
 kfree(ent);
}
