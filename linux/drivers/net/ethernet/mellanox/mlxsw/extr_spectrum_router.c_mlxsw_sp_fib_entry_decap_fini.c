
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tunnel_index; TYPE_1__* ipip_entry; } ;
struct mlxsw_sp_fib_entry {TYPE_2__ decap; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_3__ {int * decap_fib_entry; } ;


 int MLXSW_SP_KVDL_ENTRY_TYPE_ADJ ;
 int mlxsw_sp_kvdl_free (struct mlxsw_sp*,int ,int,int ) ;

__attribute__((used)) static void mlxsw_sp_fib_entry_decap_fini(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_fib_entry *fib_entry)
{

 fib_entry->decap.ipip_entry->decap_fib_entry = ((void*)0);
 fib_entry->decap.ipip_entry = ((void*)0);
 mlxsw_sp_kvdl_free(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ADJ,
      1, fib_entry->decap.tunnel_index);
}
