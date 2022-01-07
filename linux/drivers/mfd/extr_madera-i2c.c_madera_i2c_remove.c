
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera {int dummy; } ;
struct i2c_client {int dev; } ;


 struct madera* dev_get_drvdata (int *) ;
 int madera_dev_exit (struct madera*) ;

__attribute__((used)) static int madera_i2c_remove(struct i2c_client *i2c)
{
 struct madera *madera = dev_get_drvdata(&i2c->dev);

 madera_dev_exit(madera);

 return 0;
}
