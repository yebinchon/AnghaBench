
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ad5820_device {int dummy; } ;


 int ad5820_init_controls (struct ad5820_device*) ;
 struct ad5820_device* to_ad5820_device (struct v4l2_subdev*) ;

__attribute__((used)) static int ad5820_registered(struct v4l2_subdev *subdev)
{
 struct ad5820_device *coil = to_ad5820_device(subdev);

 return ad5820_init_controls(coil);
}
