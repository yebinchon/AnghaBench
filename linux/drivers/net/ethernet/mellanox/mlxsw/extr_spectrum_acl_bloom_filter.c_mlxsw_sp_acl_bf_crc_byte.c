
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int* mlxsw_sp_acl_bf_crc_tab ;

__attribute__((used)) static u16 mlxsw_sp_acl_bf_crc_byte(u16 crc, u8 c)
{
 return (crc << 8) ^ mlxsw_sp_acl_bf_crc_tab[(crc >> 8) ^ c];
}
