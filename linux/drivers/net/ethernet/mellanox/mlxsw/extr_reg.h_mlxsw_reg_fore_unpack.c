
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int BIT (int ) ;
 int mlxsw_reg_fore_fan_under_limit_get (char*) ;

__attribute__((used)) static inline void mlxsw_reg_fore_unpack(char *payload, u8 tacho,
      bool *fault)
{
 u16 limit;

 if (fault) {
  limit = mlxsw_reg_fore_fan_under_limit_get(payload);
  *fault = limit & BIT(tacho);
 }
}
