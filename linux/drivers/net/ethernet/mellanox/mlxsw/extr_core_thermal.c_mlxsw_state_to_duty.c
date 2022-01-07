
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DIV_ROUND_CLOSEST (int,int ) ;
 int MLXSW_THERMAL_MAX_DUTY ;
 int MLXSW_THERMAL_MAX_STATE ;

__attribute__((used)) static inline u8 mlxsw_state_to_duty(int state)
{
 return DIV_ROUND_CLOSEST(state * MLXSW_THERMAL_MAX_DUTY,
     MLXSW_THERMAL_MAX_STATE);
}
