
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {TYPE_2__* ops; } ;
struct v4l2_enum_dv_timings {int pad; } ;
struct TYPE_4__ {TYPE_1__* pad; } ;
struct TYPE_3__ {int (* enum_dv_timings ) (struct v4l2_subdev*,struct v4l2_enum_dv_timings*) ;} ;


 int EINVAL ;
 scalar_t__ check_pad (struct v4l2_subdev*,int ) ;
 int stub1 (struct v4l2_subdev*,struct v4l2_enum_dv_timings*) ;

__attribute__((used)) static int call_enum_dv_timings(struct v4l2_subdev *sd,
    struct v4l2_enum_dv_timings *dvt)
{
 if (!dvt)
  return -EINVAL;

 return check_pad(sd, dvt->pad) ? :
        sd->ops->pad->enum_dv_timings(sd, dvt);
}
