
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int mlxsw_reg_pptb_prio_to_buff_msb_set (char*,int ,int ) ;
 int mlxsw_reg_pptb_prio_to_buff_set (char*,int ,int ) ;

__attribute__((used)) static inline void mlxsw_reg_pptb_prio_to_buff_pack(char *payload, u8 prio,
          u8 buff)
{
 mlxsw_reg_pptb_prio_to_buff_set(payload, prio, buff);
 mlxsw_reg_pptb_prio_to_buff_msb_set(payload, prio, buff);
}
