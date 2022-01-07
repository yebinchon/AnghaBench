
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_pads; TYPE_1__* pads; } ;
struct v4l2_subdev {TYPE_2__ entity; } ;
struct TYPE_3__ {int flags; } ;


 int EINVAL ;

__attribute__((used)) static int rvin_find_pad(struct v4l2_subdev *sd, int direction)
{
 unsigned int pad;

 if (sd->entity.num_pads <= 1)
  return 0;

 for (pad = 0; pad < sd->entity.num_pads; pad++)
  if (sd->entity.pads[pad].flags & direction)
   return pad;

 return -EINVAL;
}
