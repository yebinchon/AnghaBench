
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_i2c {int completion; } ;


 int complete (int *) ;

__attribute__((used)) static void i2c_handler(void *priv)
{
 struct ddb_i2c *i2c = (struct ddb_i2c *)priv;

 complete(&i2c->completion);
}
