
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa717x_state {int enable; } ;


 int debug ;
 int saa717x_write (struct v4l2_subdev*,int,int) ;
 struct saa717x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,char*) ;

__attribute__((used)) static int saa717x_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct saa717x_state *decoder = to_state(sd);

 v4l2_dbg(1, debug, sd, "decoder %s output\n",
   enable ? "enable" : "disable");
 decoder->enable = enable;
 saa717x_write(sd, 0x193, enable ? 0xa6 : 0x26);
 return 0;
}
