
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_sp_kvdl_entry_type { ____Placeholder_mlxsw_sp_kvdl_entry_type } mlxsw_sp_kvdl_entry_type ;



__attribute__((used)) static int mlxsw_sp2_kvdl_alloc_size_query(struct mlxsw_sp *mlxsw_sp,
        void *priv,
        enum mlxsw_sp_kvdl_entry_type type,
        unsigned int entry_count,
        unsigned int *p_alloc_count)
{
 *p_alloc_count = entry_count;
 return 0;
}
