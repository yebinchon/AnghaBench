
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct em28xx_i2c_bus {scalar_t__ algo_type; struct em28xx* dev; } ;
struct em28xx {int dummy; } ;


 scalar_t__ EM28XX_I2C_ALGO_EM25XX_BUS_B ;
 scalar_t__ EM28XX_I2C_ALGO_EM2800 ;
 scalar_t__ EM28XX_I2C_ALGO_EM28XX ;
 int EOPNOTSUPP ;
 int em25xx_bus_B_check_for_device (struct em28xx*,int ) ;
 int em2800_i2c_check_for_device (struct em28xx*,int ) ;
 int em28xx_i2c_check_for_device (struct em28xx*,int ) ;

__attribute__((used)) static inline int i2c_check_for_device(struct em28xx_i2c_bus *i2c_bus, u16 addr)
{
 struct em28xx *dev = i2c_bus->dev;
 int rc = -EOPNOTSUPP;

 if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM28XX)
  rc = em28xx_i2c_check_for_device(dev, addr);
 else if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM2800)
  rc = em2800_i2c_check_for_device(dev, addr);
 else if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM25XX_BUS_B)
  rc = em25xx_bus_B_check_for_device(dev, addr);
 return rc;
}
