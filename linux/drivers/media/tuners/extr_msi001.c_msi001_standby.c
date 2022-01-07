
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct msi001_dev {int dummy; } ;


 int msi001_wreg (struct msi001_dev*,int) ;
 struct msi001_dev* sd_to_msi001_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int msi001_standby(struct v4l2_subdev *sd)
{
 struct msi001_dev *dev = sd_to_msi001_dev(sd);

 return msi001_wreg(dev, 0x000000);
}
