
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int __be16 ;


 int MLXSW_I2C_TLV_HDR_SIZE ;
 int be16_to_cpup (int *) ;

__attribute__((used)) static inline int mlxsw_i2c_get_reg_size(u8 *in_mbox)
{
 u16 tmp = be16_to_cpup((__be16 *) (in_mbox + MLXSW_I2C_TLV_HDR_SIZE));

 return (tmp & 0x7ff) * 4 + MLXSW_I2C_TLV_HDR_SIZE;
}
