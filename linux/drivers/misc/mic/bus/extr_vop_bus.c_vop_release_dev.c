
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_device {int dummy; } ;
struct device {int dummy; } ;


 struct vop_device* dev_to_vop (struct device*) ;
 int kfree (struct vop_device*) ;

__attribute__((used)) static void vop_release_dev(struct device *d)
{
 struct vop_device *dev = dev_to_vop(d);

 kfree(dev);
}
