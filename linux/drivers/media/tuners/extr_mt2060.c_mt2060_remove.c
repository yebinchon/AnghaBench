
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;

__attribute__((used)) static int mt2060_remove(struct i2c_client *client)
{
 dev_dbg(&client->dev, "\n");

 return 0;
}
