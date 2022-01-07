
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int ref; } ;


 int kref_put (int *,int ) ;
 int v4l2_device_release ;

int v4l2_device_put(struct v4l2_device *v4l2_dev)
{
 return kref_put(&v4l2_dev->ref, v4l2_device_release);
}
