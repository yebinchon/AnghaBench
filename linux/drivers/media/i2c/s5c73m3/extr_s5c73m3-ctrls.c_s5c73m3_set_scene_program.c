
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* scene_mode; } ;
struct s5c73m3 {TYPE_2__ ctrls; int sensor_sd; } ;
struct TYPE_3__ {int id; } ;


 int COMM_SCENE_MODE ;
 int s5c73m3_dbg ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,unsigned short const) ;
 int * v4l2_ctrl_get_menu (int ) ;
 int v4l2_dbg (int,int ,int *,char*,int ) ;

__attribute__((used)) static int s5c73m3_set_scene_program(struct s5c73m3 *state, int val)
{
 static const unsigned short scene_lookup[] = {
  132,
  141,
  140,
  139,
  138,
  137,
  136,
  134,
  133,
  135,
  131,
  130,
  129,
  128,
 };

 v4l2_dbg(1, s5c73m3_dbg, &state->sensor_sd, "Setting %s scene mode\n",
   v4l2_ctrl_get_menu(state->ctrls.scene_mode->id)[val]);

 return s5c73m3_isp_command(state, COMM_SCENE_MODE, scene_lookup[val]);
}
