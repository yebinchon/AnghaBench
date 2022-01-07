
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_frame_interval {int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct tvp514x_decoder {int current_std; TYPE_2__* std_list; } ;
typedef enum tvp514x_std { ____Placeholder_tvp514x_std } tvp514x_std ;
struct TYPE_3__ {int frameperiod; } ;
struct TYPE_4__ {TYPE_1__ standard; } ;


 struct tvp514x_decoder* to_decoder (struct v4l2_subdev*) ;

__attribute__((used)) static int
tvp514x_g_frame_interval(struct v4l2_subdev *sd,
    struct v4l2_subdev_frame_interval *ival)
{
 struct tvp514x_decoder *decoder = to_decoder(sd);
 enum tvp514x_std current_std;



 current_std = decoder->current_std;

 ival->interval =
  decoder->std_list[current_std].standard.frameperiod;

 return 0;
}
