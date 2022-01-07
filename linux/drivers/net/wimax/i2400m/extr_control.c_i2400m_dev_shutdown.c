
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int dummy; } ;
struct device {int dummy; } ;


 int d_fnend (int,struct device*,char*,struct i2400m*) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 struct device* i2400m_dev (struct i2400m*) ;

void i2400m_dev_shutdown(struct i2400m *i2400m)
{
 struct device *dev = i2400m_dev(i2400m);

 d_fnstart(3, dev, "(i2400m %p)\n", i2400m);
 d_fnend(3, dev, "(i2400m %p) = void\n", i2400m);
}
