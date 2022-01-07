
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_i2c {int adap; } ;
struct ddb {int i2c_num; struct ddb_i2c* i2c; } ;


 int i2c_del_adapter (int *) ;

void ddb_i2c_release(struct ddb *dev)
{
 int i;
 struct ddb_i2c *i2c;

 for (i = 0; i < dev->i2c_num; i++) {
  i2c = &dev->i2c[i];
  i2c_del_adapter(&i2c->adap);
 }
}
