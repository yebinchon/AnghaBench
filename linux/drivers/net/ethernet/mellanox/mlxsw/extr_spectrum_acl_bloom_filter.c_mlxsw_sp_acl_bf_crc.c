
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int mlxsw_sp_acl_bf_crc_byte (int ,int ) ;

__attribute__((used)) static u16 mlxsw_sp_acl_bf_crc(const u8 *buffer, size_t len)
{
 u16 crc = 0;

 while (len--)
  crc = mlxsw_sp_acl_bf_crc_byte(crc, *buffer++);
 return crc;
}
