
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_sp_rif_counter_dir { ____Placeholder_mlxsw_sp_rif_counter_dir } mlxsw_sp_rif_counter_dir ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RITR_LEN ;
 int MLXSW_SP_RIF_COUNTER_EGRESS ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_ritr_counter_pack (char*,unsigned int,int,int) ;
 int mlxsw_reg_ritr_rif_pack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ritr ;

__attribute__((used)) static int mlxsw_sp_rif_counter_edit(struct mlxsw_sp *mlxsw_sp, u16 rif_index,
         unsigned int counter_index, bool enable,
         enum mlxsw_sp_rif_counter_dir dir)
{
 char ritr_pl[MLXSW_REG_RITR_LEN];
 bool is_egress = 0;
 int err;

 if (dir == MLXSW_SP_RIF_COUNTER_EGRESS)
  is_egress = 1;
 mlxsw_reg_ritr_rif_pack(ritr_pl, rif_index);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(ritr), ritr_pl);
 if (err)
  return err;

 mlxsw_reg_ritr_counter_pack(ritr_pl, counter_index, enable,
        is_egress);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ritr), ritr_pl);
}
