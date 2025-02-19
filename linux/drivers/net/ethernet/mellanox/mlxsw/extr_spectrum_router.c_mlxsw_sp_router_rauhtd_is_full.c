
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ MLXSW_REG_RAUHTD_IPV4_ENT_PER_REC ;
 scalar_t__ MLXSW_REG_RAUHTD_REC_MAX_NUM ;
 scalar_t__ MLXSW_REG_RAUHTD_TYPE_IPV6 ;
 scalar_t__ mlxsw_reg_rauhtd_ipv4_rec_num_entries_get (char*,scalar_t__) ;
 scalar_t__ mlxsw_reg_rauhtd_num_rec_get (char*) ;
 scalar_t__ mlxsw_reg_rauhtd_rec_type_get (char*,scalar_t__) ;

__attribute__((used)) static bool mlxsw_sp_router_rauhtd_is_full(char *rauhtd_pl)
{
 u8 num_rec, last_rec_index, num_entries;

 num_rec = mlxsw_reg_rauhtd_num_rec_get(rauhtd_pl);
 last_rec_index = num_rec - 1;

 if (num_rec < MLXSW_REG_RAUHTD_REC_MAX_NUM)
  return 0;
 if (mlxsw_reg_rauhtd_rec_type_get(rauhtd_pl, last_rec_index) ==
     MLXSW_REG_RAUHTD_TYPE_IPV6)
  return 1;

 num_entries = mlxsw_reg_rauhtd_ipv4_rec_num_entries_get(rauhtd_pl,
        last_rec_index);
 if (++num_entries == MLXSW_REG_RAUHTD_IPV4_ENT_PER_REC)
  return 1;
 return 0;
}
