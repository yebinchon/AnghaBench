
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlxsw_reg_ritr_if_mac_memcpy_to (char*,char const*) ;

__attribute__((used)) static inline void mlxsw_reg_ritr_mac_pack(char *payload, const char *mac)
{
 mlxsw_reg_ritr_if_mac_memcpy_to(payload, mac);
}
