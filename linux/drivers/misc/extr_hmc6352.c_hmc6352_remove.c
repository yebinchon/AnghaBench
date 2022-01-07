
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int m_compass_gr ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int hmc6352_remove(struct i2c_client *client)
{
 sysfs_remove_group(&client->dev.kobj, &m_compass_gr);
 return 0;
}
