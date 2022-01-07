
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int i2c_adapter; } ;


 int i2c_del_adapter (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void cafe_smbus_shutdown(struct cafe_camera *cam)
{
 i2c_del_adapter(cam->i2c_adapter);
 kfree(cam->i2c_adapter);
}
