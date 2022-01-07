
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_device {int dev; } ;


 int pm_runtime_put_sync (int ) ;

void vsp1_device_put(struct vsp1_device *vsp1)
{
 pm_runtime_put_sync(vsp1->dev);
}
