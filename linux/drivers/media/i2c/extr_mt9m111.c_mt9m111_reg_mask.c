
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int mt9m111_reg_read (struct i2c_client*,int const) ;
 int mt9m111_reg_write (struct i2c_client*,int const,int) ;

__attribute__((used)) static int mt9m111_reg_mask(struct i2c_client *client, const u16 reg,
       const u16 data, const u16 mask)
{
 int ret;

 ret = mt9m111_reg_read(client, reg);
 if (ret >= 0)
  ret = mt9m111_reg_write(client, reg, (ret & ~mask) | data);
 return ret;
}
