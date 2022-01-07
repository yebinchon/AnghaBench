
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_sp_rif_counter_dir { ____Placeholder_mlxsw_sp_rif_counter_dir } mlxsw_sp_rif_counter_dir ;


 int EINVAL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_RICNT_LEN ;
 int MLXSW_REG_RICNT_OPCODE_NOP ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_ricnt_good_unicast_packets_get (char*) ;
 int mlxsw_reg_ricnt_pack (char*,unsigned int,int ) ;
 int mlxsw_sp_rif_counter_valid_get (struct mlxsw_sp_rif*,int) ;
 unsigned int* mlxsw_sp_rif_p_counter_get (struct mlxsw_sp_rif*,int) ;
 int ricnt ;

int mlxsw_sp_rif_counter_value_get(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_rif *rif,
       enum mlxsw_sp_rif_counter_dir dir, u64 *cnt)
{
 char ricnt_pl[MLXSW_REG_RICNT_LEN];
 unsigned int *p_counter_index;
 bool valid;
 int err;

 valid = mlxsw_sp_rif_counter_valid_get(rif, dir);
 if (!valid)
  return -EINVAL;

 p_counter_index = mlxsw_sp_rif_p_counter_get(rif, dir);
 if (!p_counter_index)
  return -EINVAL;
 mlxsw_reg_ricnt_pack(ricnt_pl, *p_counter_index,
        MLXSW_REG_RICNT_OPCODE_NOP);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(ricnt), ricnt_pl);
 if (err)
  return err;
 *cnt = mlxsw_reg_ricnt_good_unicast_packets_get(ricnt_pl);
 return 0;
}
