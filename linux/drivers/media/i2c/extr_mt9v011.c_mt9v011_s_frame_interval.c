
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_fract {int denominator; int numerator; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;


 int R0A_MT9V011_CLK_SPEED ;
 int calc_fps (struct v4l2_subdev*,int *,int *) ;
 int calc_speed (struct v4l2_subdev*,int ,int ) ;
 int debug ;
 int mt9v011_write (struct v4l2_subdev*,int ,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ) ;

__attribute__((used)) static int mt9v011_s_frame_interval(struct v4l2_subdev *sd,
        struct v4l2_subdev_frame_interval *ival)
{
 struct v4l2_fract *tpf = &ival->interval;
 u16 speed;

 speed = calc_speed(sd, tpf->numerator, tpf->denominator);

 mt9v011_write(sd, R0A_MT9V011_CLK_SPEED, speed);
 v4l2_dbg(1, debug, sd, "Setting speed to %d\n", speed);


 calc_fps(sd, &tpf->numerator, &tpf->denominator);

 return 0;
}
