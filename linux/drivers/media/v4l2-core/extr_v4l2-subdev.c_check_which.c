
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 int EINVAL ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;

__attribute__((used)) static inline int check_which(__u32 which)
{
 if (which != V4L2_SUBDEV_FORMAT_TRY &&
     which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 return 0;
}
