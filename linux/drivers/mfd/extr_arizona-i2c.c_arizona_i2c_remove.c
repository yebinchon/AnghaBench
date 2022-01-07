
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct arizona {int dummy; } ;


 int arizona_dev_exit (struct arizona*) ;
 struct arizona* dev_get_drvdata (int *) ;

__attribute__((used)) static int arizona_i2c_remove(struct i2c_client *i2c)
{
 struct arizona *arizona = dev_get_drvdata(&i2c->dev);

 arizona_dev_exit(arizona);

 return 0;
}
