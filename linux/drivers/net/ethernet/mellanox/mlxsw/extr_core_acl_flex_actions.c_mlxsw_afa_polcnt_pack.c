
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mlxsw_afa_polcnt_counter_set_type { ____Placeholder_mlxsw_afa_polcnt_counter_set_type } mlxsw_afa_polcnt_counter_set_type ;


 int mlxsw_afa_polcnt_counter_index_set (char*,int ) ;
 int mlxsw_afa_polcnt_counter_set_type_set (char*,int) ;

__attribute__((used)) static inline void
mlxsw_afa_polcnt_pack(char *payload,
        enum mlxsw_afa_polcnt_counter_set_type set_type,
        u32 counter_index)
{
 mlxsw_afa_polcnt_counter_set_type_set(payload, set_type);
 mlxsw_afa_polcnt_counter_index_set(payload, counter_index);
}
