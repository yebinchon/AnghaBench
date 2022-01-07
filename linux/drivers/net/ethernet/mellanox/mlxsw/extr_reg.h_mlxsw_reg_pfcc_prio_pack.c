
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_PFCC_ALL_PRIO ;
 int mlxsw_reg_pfcc_pfcrx_set (char*,int ) ;
 int mlxsw_reg_pfcc_pfctx_set (char*,int ) ;
 int mlxsw_reg_pfcc_prio_mask_rx_set (char*,int ) ;
 int mlxsw_reg_pfcc_prio_mask_tx_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_pfcc_prio_pack(char *payload, u8 pfc_en)
{
 mlxsw_reg_pfcc_prio_mask_tx_set(payload, MLXSW_REG_PFCC_ALL_PRIO);
 mlxsw_reg_pfcc_prio_mask_rx_set(payload, MLXSW_REG_PFCC_ALL_PRIO);
 mlxsw_reg_pfcc_pfctx_set(payload, pfc_en);
 mlxsw_reg_pfcc_pfcrx_set(payload, pfc_en);
}
