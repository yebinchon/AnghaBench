
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int mlxsw_reg_mfsl_tach_max_get (char*) ;
 int mlxsw_reg_mfsl_tach_min_get (char*) ;

__attribute__((used)) static inline void mlxsw_reg_mfsl_unpack(char *payload, u8 tacho,
      u16 *p_tach_min, u16 *p_tach_max)
{
 if (p_tach_min)
  *p_tach_min = mlxsw_reg_mfsl_tach_min_get(payload);

 if (p_tach_max)
  *p_tach_max = mlxsw_reg_mfsl_tach_max_get(payload);
}
