
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct gs {int enabled; int pdev; int current_timings; } ;


 int REG_FORCE_FMT ;
 int get_register_timings (int *) ;
 int gs_write_register (int ,int ,int) ;
 struct gs* to_gs (struct v4l2_subdev*) ;

__attribute__((used)) static int gs_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct gs *gs = to_gs(sd);
 int reg_value;

 if (gs->enabled == enable)
  return 0;

 gs->enabled = enable;

 if (enable) {

  reg_value = get_register_timings(&gs->current_timings);
  return gs_write_register(gs->pdev, REG_FORCE_FMT, reg_value);
 }


 return gs_write_register(gs->pdev, REG_FORCE_FMT, 0x0);
}
