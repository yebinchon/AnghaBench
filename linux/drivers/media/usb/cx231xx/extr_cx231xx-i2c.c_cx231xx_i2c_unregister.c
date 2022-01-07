
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx_i2c {int i2c_adap; int i2c_rc; } ;


 int i2c_del_adapter (int *) ;

void cx231xx_i2c_unregister(struct cx231xx_i2c *bus)
{
 if (!bus->i2c_rc)
  i2c_del_adapter(&bus->i2c_adap);
}
