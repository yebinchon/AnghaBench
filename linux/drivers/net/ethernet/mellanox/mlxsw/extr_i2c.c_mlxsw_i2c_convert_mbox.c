
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int mb_off_in; int mb_size_in; int mb_off_out; int mb_size_out; } ;
struct mlxsw_i2c {TYPE_1__ cmd; } ;
typedef int __be32 ;


 int GENMASK (int,int) ;
 int MLXSW_I2C_ADDR_WIDTH ;
 int MLXSW_I2C_MBOX_OFFSET_BITS ;
 int be32_to_cpup (int *) ;

__attribute__((used)) static inline void
mlxsw_i2c_convert_mbox(struct mlxsw_i2c *mlxsw_i2c, u8 *buf)
{
 u32 tmp;


 tmp = be32_to_cpup((__be32 *) buf);
 mlxsw_i2c->cmd.mb_off_in = tmp &
       GENMASK(MLXSW_I2C_MBOX_OFFSET_BITS - 1, 0);
 mlxsw_i2c->cmd.mb_size_in = (tmp & GENMASK(31,
     MLXSW_I2C_MBOX_OFFSET_BITS)) >>
     MLXSW_I2C_MBOX_OFFSET_BITS;

 tmp = be32_to_cpup((__be32 *) (buf + MLXSW_I2C_ADDR_WIDTH));
 mlxsw_i2c->cmd.mb_off_out = tmp &
        GENMASK(MLXSW_I2C_MBOX_OFFSET_BITS - 1, 0);
 mlxsw_i2c->cmd.mb_size_out = (tmp & GENMASK(31,
     MLXSW_I2C_MBOX_OFFSET_BITS)) >>
     MLXSW_I2C_MBOX_OFFSET_BITS;
}
