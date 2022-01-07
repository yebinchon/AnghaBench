
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_spms_state { ____Placeholder_mlxsw_reg_spms_state } mlxsw_reg_spms_state ;


 int mlxsw_reg_spms_state_set (char*,int ,int) ;

__attribute__((used)) static inline void mlxsw_reg_spms_vid_pack(char *payload, u16 vid,
        enum mlxsw_reg_spms_state state)
{
 mlxsw_reg_spms_state_set(payload, vid, state);
}
