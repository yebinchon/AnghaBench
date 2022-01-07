
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_flash_ops {int dummy; } ;
struct v4l2_flash_config {int dummy; } ;
struct v4l2_flash {int dummy; } ;
struct led_classdev_flash {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 struct v4l2_flash* __v4l2_flash_init (struct device*,struct fwnode_handle*,struct led_classdev_flash*,int *,struct v4l2_flash_ops const*,struct v4l2_flash_config*) ;

struct v4l2_flash *v4l2_flash_init(
 struct device *dev, struct fwnode_handle *fwn,
 struct led_classdev_flash *fled_cdev,
 const struct v4l2_flash_ops *ops,
 struct v4l2_flash_config *config)
{
 return __v4l2_flash_init(dev, fwn, fled_cdev, ((void*)0), ops, config);
}
