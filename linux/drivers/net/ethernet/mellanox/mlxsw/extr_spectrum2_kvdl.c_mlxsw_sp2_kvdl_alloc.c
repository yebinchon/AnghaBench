
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp2_kvdl_part {int dummy; } ;
struct mlxsw_sp2_kvdl {struct mlxsw_sp2_kvdl_part** parts; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_sp_kvdl_entry_type { ____Placeholder_mlxsw_sp_kvdl_entry_type } mlxsw_sp_kvdl_entry_type ;


 int mlxsw_sp2_kvdl_part_alloc (struct mlxsw_sp2_kvdl_part*,unsigned int,int *) ;
 unsigned int mlxsw_sp_kvdl_entry_size (int) ;

__attribute__((used)) static int mlxsw_sp2_kvdl_alloc(struct mlxsw_sp *mlxsw_sp, void *priv,
    enum mlxsw_sp_kvdl_entry_type type,
    unsigned int entry_count,
    u32 *p_entry_index)
{
 unsigned int size = entry_count * mlxsw_sp_kvdl_entry_size(type);
 struct mlxsw_sp2_kvdl *kvdl = priv;
 struct mlxsw_sp2_kvdl_part *part = kvdl->parts[type];

 return mlxsw_sp2_kvdl_part_alloc(part, size, p_entry_index);
}
