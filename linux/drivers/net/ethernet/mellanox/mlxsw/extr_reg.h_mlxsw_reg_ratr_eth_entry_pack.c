
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlxsw_reg_ratr_eth_destination_mac_memcpy_to (char*,char const*) ;

__attribute__((used)) static inline void mlxsw_reg_ratr_eth_entry_pack(char *payload,
       const char *dest_mac)
{
 mlxsw_reg_ratr_eth_destination_mac_memcpy_to(payload, dest_mac);
}
