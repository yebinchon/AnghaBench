
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_afa_fwd_entry_ht_key {int local_port; int member_0; } ;
struct mlxsw_afa_fwd_entry {int ref_count; } ;
struct mlxsw_afa {int fwd_entry_ht; } ;


 struct mlxsw_afa_fwd_entry* mlxsw_afa_fwd_entry_create (struct mlxsw_afa*,int ) ;
 int mlxsw_afa_fwd_entry_ht_params ;
 struct mlxsw_afa_fwd_entry* rhashtable_lookup_fast (int *,struct mlxsw_afa_fwd_entry_ht_key*,int ) ;

__attribute__((used)) static struct mlxsw_afa_fwd_entry *
mlxsw_afa_fwd_entry_get(struct mlxsw_afa *mlxsw_afa, u8 local_port)
{
 struct mlxsw_afa_fwd_entry_ht_key ht_key = {0};
 struct mlxsw_afa_fwd_entry *fwd_entry;

 ht_key.local_port = local_port;
 fwd_entry = rhashtable_lookup_fast(&mlxsw_afa->fwd_entry_ht, &ht_key,
        mlxsw_afa_fwd_entry_ht_params);
 if (fwd_entry) {
  fwd_entry->ref_count++;
  return fwd_entry;
 }
 return mlxsw_afa_fwd_entry_create(mlxsw_afa, local_port);
}
