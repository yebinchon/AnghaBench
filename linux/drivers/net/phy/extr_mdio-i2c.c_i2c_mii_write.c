
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mii_bus {struct i2c_adapter* priv; } ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int i2c_mii_phy_addr (int) ;
 int i2c_mii_valid_phy_id (int) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int i2c_mii_write(struct mii_bus *bus, int phy_id, int reg, u16 val)
{
 struct i2c_adapter *i2c = bus->priv;
 struct i2c_msg msg;
 int ret;
 u8 data[3];

 if (!i2c_mii_valid_phy_id(phy_id))
  return 0;

 data[0] = reg;
 data[1] = val >> 8;
 data[2] = val;

 msg.addr = i2c_mii_phy_addr(phy_id);
 msg.flags = 0;
 msg.len = 3;
 msg.buf = data;

 ret = i2c_transfer(i2c, &msg, 1);

 return ret < 0 ? ret : 0;
}
