
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe {int dummy; } ;
struct i2c_client {int dev; } ;


 struct stmpe* dev_get_drvdata (int *) ;
 int stmpe_remove (struct stmpe*) ;

__attribute__((used)) static int stmpe_i2c_remove(struct i2c_client *i2c)
{
 struct stmpe *stmpe = dev_get_drvdata(&i2c->dev);

 return stmpe_remove(stmpe);
}
