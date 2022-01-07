
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlxsw_reg_pefa_a_get (char*) ;

__attribute__((used)) static inline void mlxsw_reg_pefa_unpack(char *payload, bool *p_a)
{
 *p_a = mlxsw_reg_pefa_a_get(payload);
}
