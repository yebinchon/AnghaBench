
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_device {int dummy; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 struct vsp1_device* dev_get_drvdata (struct device*) ;

int vsp1_du_init(struct device *dev)
{
 struct vsp1_device *vsp1 = dev_get_drvdata(dev);

 if (!vsp1)
  return -EPROBE_DEFER;

 return 0;
}
