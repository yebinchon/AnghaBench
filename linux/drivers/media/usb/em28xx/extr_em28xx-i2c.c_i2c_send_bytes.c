
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_msg {int addr; int len; int buf; } ;
struct em28xx_i2c_bus {scalar_t__ algo_type; struct em28xx* dev; } ;
struct em28xx {int dummy; } ;


 scalar_t__ EM28XX_I2C_ALGO_EM25XX_BUS_B ;
 scalar_t__ EM28XX_I2C_ALGO_EM2800 ;
 scalar_t__ EM28XX_I2C_ALGO_EM28XX ;
 int EOPNOTSUPP ;
 int em25xx_bus_B_send_bytes (struct em28xx*,int,int ,int ) ;
 int em2800_i2c_send_bytes (struct em28xx*,int,int ,int ) ;
 int em28xx_i2c_send_bytes (struct em28xx*,int,int ,int ,int) ;

__attribute__((used)) static inline int i2c_send_bytes(struct em28xx_i2c_bus *i2c_bus,
     struct i2c_msg msg, int stop)
{
 struct em28xx *dev = i2c_bus->dev;
 u16 addr = msg.addr << 1;
 int rc = -EOPNOTSUPP;

 if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM28XX)
  rc = em28xx_i2c_send_bytes(dev, addr, msg.buf, msg.len, stop);
 else if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM2800)
  rc = em2800_i2c_send_bytes(dev, addr, msg.buf, msg.len);
 else if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM25XX_BUS_B)
  rc = em25xx_bus_B_send_bytes(dev, addr, msg.buf, msg.len);
 return rc;
}
