
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_set {int dummy; } ;


 int kfree (struct mlxsw_afa_set*) ;

__attribute__((used)) static void mlxsw_afa_set_destroy(struct mlxsw_afa_set *set)
{
 kfree(set);
}
