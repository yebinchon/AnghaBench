
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int alloc_size; } ;
struct mlxsw_sp1_kvdl_part {TYPE_1__ info; } ;
struct mlxsw_sp1_kvdl {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_sp_kvdl_entry_type { ____Placeholder_mlxsw_sp_kvdl_entry_type } mlxsw_sp_kvdl_entry_type ;


 scalar_t__ IS_ERR (struct mlxsw_sp1_kvdl_part*) ;
 int PTR_ERR (struct mlxsw_sp1_kvdl_part*) ;
 struct mlxsw_sp1_kvdl_part* mlxsw_sp1_kvdl_alloc_size_part (struct mlxsw_sp1_kvdl*,unsigned int) ;

__attribute__((used)) static int mlxsw_sp1_kvdl_alloc_size_query(struct mlxsw_sp *mlxsw_sp,
        void *priv,
        enum mlxsw_sp_kvdl_entry_type type,
        unsigned int entry_count,
        unsigned int *p_alloc_size)
{
 struct mlxsw_sp1_kvdl *kvdl = priv;
 struct mlxsw_sp1_kvdl_part *part;

 part = mlxsw_sp1_kvdl_alloc_size_part(kvdl, entry_count);
 if (IS_ERR(part))
  return PTR_ERR(part);

 *p_alloc_size = part->info.alloc_size;

 return 0;
}
