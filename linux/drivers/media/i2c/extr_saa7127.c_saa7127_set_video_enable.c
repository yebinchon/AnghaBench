
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa7127_state {int reg_2d; int reg_61; int video_enable; } ;


 int debug ;
 int saa7127_write (struct v4l2_subdev*,int,int) ;
 struct saa7127_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int saa7127_set_video_enable(struct v4l2_subdev *sd, int enable)
{
 struct saa7127_state *state = to_state(sd);

 if (enable) {
  v4l2_dbg(1, debug, sd, "Enable Video Output\n");
  saa7127_write(sd, 0x2d, state->reg_2d);
  saa7127_write(sd, 0x61, state->reg_61);
 } else {
  v4l2_dbg(1, debug, sd, "Disable Video Output\n");
  saa7127_write(sd, 0x2d, (state->reg_2d & 0xf0));
  saa7127_write(sd, 0x61, (state->reg_61 | 0xc0));
 }
 state->video_enable = enable;
 return 0;
}
