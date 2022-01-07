
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct vop_device {TYPE_1__ dev; } ;
struct mic_driver {int dummy; } ;


 struct mic_driver* dev_get_drvdata (int ) ;

__attribute__((used)) static inline struct mic_driver *vpdev_to_mdrv(struct vop_device *vpdev)
{
 return dev_get_drvdata(vpdev->dev.parent);
}
