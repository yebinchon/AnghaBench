
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_prefix_usage {int dummy; } ;


 int memcpy (struct mlxsw_sp_prefix_usage*,struct mlxsw_sp_prefix_usage*,int) ;

__attribute__((used)) static void
mlxsw_sp_prefix_usage_cpy(struct mlxsw_sp_prefix_usage *prefix_usage1,
     struct mlxsw_sp_prefix_usage *prefix_usage2)
{
 memcpy(prefix_usage1, prefix_usage2, sizeof(*prefix_usage1));
}
