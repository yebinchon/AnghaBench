
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_RALST_BIN_COUNT ;
 int MLXSW_REG_RALST_BIN_NO_CHILD ;
 int MLXSW_REG_RALST_BIN_OFFSET ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int memset (char*,int ,int) ;
 int mlxsw_reg_ralst_root_bin_set (char*,int ) ;
 int mlxsw_reg_ralst_tree_id_set (char*,int ) ;
 int ralst ;

__attribute__((used)) static inline void mlxsw_reg_ralst_pack(char *payload, u8 root_bin, u8 tree_id)
{
 MLXSW_REG_ZERO(ralst, payload);


 memset(payload + MLXSW_REG_RALST_BIN_OFFSET,
        MLXSW_REG_RALST_BIN_NO_CHILD, MLXSW_REG_RALST_BIN_COUNT * 2);

 mlxsw_reg_ralst_root_bin_set(payload, root_bin);
 mlxsw_reg_ralst_tree_id_set(payload, tree_id);
}
