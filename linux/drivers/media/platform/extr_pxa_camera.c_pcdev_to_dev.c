
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* dev; } ;
struct pxa_camera_dev {TYPE_1__ v4l2_dev; } ;
struct device {int dummy; } ;



__attribute__((used)) static struct device *pcdev_to_dev(struct pxa_camera_dev *pcdev)
{
 return pcdev->v4l2_dev.dev;
}
