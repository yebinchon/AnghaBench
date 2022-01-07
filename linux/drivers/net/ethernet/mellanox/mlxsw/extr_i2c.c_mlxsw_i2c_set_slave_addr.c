
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __be32 ;


 int htonl (int ) ;

__attribute__((used)) static inline void mlxsw_i2c_set_slave_addr(u8 *buf, u32 off)
{
 __be32 *val = (__be32 *) buf;

 *val = htonl(off);
}
