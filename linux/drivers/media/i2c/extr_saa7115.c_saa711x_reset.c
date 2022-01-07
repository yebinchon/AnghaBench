
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int debug ;
 int saa7115_cfg_reset_scaler ;
 int saa711x_writeregs (struct v4l2_subdev*,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int saa711x_reset(struct v4l2_subdev *sd, u32 val)
{
 v4l2_dbg(1, debug, sd, "decoder RESET\n");
 saa711x_writeregs(sd, saa7115_cfg_reset_scaler);
 return 0;
}
