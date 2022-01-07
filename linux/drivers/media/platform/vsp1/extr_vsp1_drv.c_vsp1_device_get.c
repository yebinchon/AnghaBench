
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_device {int dev; } ;


 int pm_runtime_get_sync (int ) ;

int vsp1_device_get(struct vsp1_device *vsp1)
{
 int ret;

 ret = pm_runtime_get_sync(vsp1->dev);
 return ret < 0 ? ret : 0;
}
