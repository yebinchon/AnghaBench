
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_flood_table {int packet_type; } ;
struct mlxsw_sp_fid_family {int nr_flood_tables; struct mlxsw_sp_flood_table const* flood_tables; } ;
struct mlxsw_sp_fid {struct mlxsw_sp_fid_family* fid_family; } ;
typedef enum mlxsw_sp_flood_type { ____Placeholder_mlxsw_sp_flood_type } mlxsw_sp_flood_type ;



__attribute__((used)) static const struct mlxsw_sp_flood_table *
mlxsw_sp_fid_flood_table_lookup(const struct mlxsw_sp_fid *fid,
    enum mlxsw_sp_flood_type packet_type)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
 int i;

 for (i = 0; i < fid_family->nr_flood_tables; i++) {
  if (fid_family->flood_tables[i].packet_type != packet_type)
   continue;
  return &fid_family->flood_tables[i];
 }

 return ((void*)0);
}
