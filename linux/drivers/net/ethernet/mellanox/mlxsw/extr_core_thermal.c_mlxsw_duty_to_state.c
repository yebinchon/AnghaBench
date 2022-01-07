
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DIV_ROUND_CLOSEST (int,int ) ;
 int MLXSW_THERMAL_MAX_DUTY ;
 int MLXSW_THERMAL_MAX_STATE ;

__attribute__((used)) static inline int mlxsw_duty_to_state(u8 duty)
{
 return DIV_ROUND_CLOSEST(duty * MLXSW_THERMAL_MAX_STATE,
     MLXSW_THERMAL_MAX_DUTY);
}
