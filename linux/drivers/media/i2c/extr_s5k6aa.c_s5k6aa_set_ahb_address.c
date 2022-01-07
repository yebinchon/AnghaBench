
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int AHB_MSB_ADDR_PTR ;
 int GEN_REG_OFFSH ;
 int HOST_SWIF_OFFSH ;
 int REG_CMDRD_ADDRH ;
 int REG_CMDWR_ADDRH ;
 int s5k6aa_i2c_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int s5k6aa_set_ahb_address(struct i2c_client *client)
{
 int ret = s5k6aa_i2c_write(client, AHB_MSB_ADDR_PTR, GEN_REG_OFFSH);
 if (ret)
  return ret;
 ret = s5k6aa_i2c_write(client, REG_CMDRD_ADDRH, HOST_SWIF_OFFSH);
 if (ret)
  return ret;
 return s5k6aa_i2c_write(client, REG_CMDWR_ADDRH, HOST_SWIF_OFFSH);
}
