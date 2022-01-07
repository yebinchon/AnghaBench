
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_fh {int * pad; } ;
struct TYPE_2__ {scalar_t__ num_pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;


 int ENOMEM ;
 int * v4l2_subdev_alloc_pad_config (struct v4l2_subdev*) ;

__attribute__((used)) static int subdev_fh_init(struct v4l2_subdev_fh *fh, struct v4l2_subdev *sd)
{







 return 0;
}
