
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_sp_kvdl_entry_type { ____Placeholder_mlxsw_sp_kvdl_entry_type } mlxsw_sp_kvdl_entry_type ;
__attribute__((used)) static inline unsigned int
mlxsw_sp_kvdl_entry_size(enum mlxsw_sp_kvdl_entry_type type)
{
 switch (type) {
 case 131:
 case 132:
 case 129:
 case 130:
 case 128:
 default:
  return 1;
 }
}
