
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
typedef scalar_t__ __u32 ;


 int EINVAL ;

__attribute__((used)) static inline int check_pad(struct v4l2_subdev *sd, __u32 pad)
{
 if (pad > 0)
  return -EINVAL;
 return 0;
}
