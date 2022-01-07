
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_mtptpt_trap_id { ____Placeholder_mlxsw_reg_mtptpt_trap_id } mlxsw_reg_mtptpt_trap_id ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_mtptpt_message_type_set (char*,int ) ;
 int mlxsw_reg_mtptpt_trap_id_set (char*,int) ;
 int mtptpt ;

__attribute__((used)) static inline void mlxsw_reg_mtptptp_pack(char *payload,
       enum mlxsw_reg_mtptpt_trap_id trap_id,
       u16 message_type)
{
 MLXSW_REG_ZERO(mtptpt, payload);
 mlxsw_reg_mtptpt_trap_id_set(payload, trap_id);
 mlxsw_reg_mtptpt_message_type_set(payload, message_type);
}
