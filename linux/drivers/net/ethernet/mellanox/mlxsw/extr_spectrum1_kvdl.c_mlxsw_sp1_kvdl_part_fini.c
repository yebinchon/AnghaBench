
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp1_kvdl_part {int dummy; } ;


 int kfree (struct mlxsw_sp1_kvdl_part*) ;

__attribute__((used)) static void mlxsw_sp1_kvdl_part_fini(struct mlxsw_sp1_kvdl_part *part)
{
 kfree(part);
}
