
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_flash_config {int dummy; } ;
struct v4l2_flash {int dummy; } ;
struct led_classdev {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 struct v4l2_flash* __v4l2_flash_init (struct device*,struct fwnode_handle*,int *,struct led_classdev*,int *,struct v4l2_flash_config*) ;

struct v4l2_flash *v4l2_flash_indicator_init(
 struct device *dev, struct fwnode_handle *fwn,
 struct led_classdev *iled_cdev,
 struct v4l2_flash_config *config)
{
 return __v4l2_flash_init(dev, fwn, ((void*)0), iled_cdev, ((void*)0), config);
}
