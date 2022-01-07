
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_flood_table {int packet_type; int table_index; int table_type; int bridge_type; } ;
struct mlxsw_sp_fid_family {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_sp_flood_type { ____Placeholder_mlxsw_sp_flood_type } mlxsw_sp_flood_type ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SFGC_LEN ;
 int MLXSW_REG_SFGC_TYPE_MAX ;
 int mlxsw_reg_sfgc_pack (char*,int,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int** mlxsw_sp_packet_type_sfgc_types ;
 int sfgc ;

__attribute__((used)) static int
mlxsw_sp_fid_flood_table_init(struct mlxsw_sp_fid_family *fid_family,
         const struct mlxsw_sp_flood_table *flood_table)
{
 enum mlxsw_sp_flood_type packet_type = flood_table->packet_type;
 const int *sfgc_packet_types;
 int i;

 sfgc_packet_types = mlxsw_sp_packet_type_sfgc_types[packet_type];
 for (i = 0; i < MLXSW_REG_SFGC_TYPE_MAX; i++) {
  struct mlxsw_sp *mlxsw_sp = fid_family->mlxsw_sp;
  char sfgc_pl[MLXSW_REG_SFGC_LEN];
  int err;

  if (!sfgc_packet_types[i])
   continue;
  mlxsw_reg_sfgc_pack(sfgc_pl, i, flood_table->bridge_type,
        flood_table->table_type,
        flood_table->table_index);
  err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sfgc), sfgc_pl);
  if (err)
   return err;
 }

 return 0;
}
