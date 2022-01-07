
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* colorfx; } ;
struct s5c73m3 {TYPE_2__ ctrls; int sensor_sd; } ;
struct TYPE_3__ {int id; } ;


 int ARRAY_SIZE (unsigned short const**) ;
 int COMM_IMAGE_EFFECT ;





 int EINVAL ;





 int s5c73m3_dbg ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,unsigned short const) ;
 int * v4l2_ctrl_get_menu (int ) ;
 int v4l2_dbg (int,int ,int *,char*,int ) ;

__attribute__((used)) static int s5c73m3_set_colorfx(struct s5c73m3 *state, int val)
{
 static const unsigned short colorfx[][2] = {
  { 129, 134 },
  { 131, 136 },
  { 128, 133 },
  { 130, 135 },
  { 132, 137 },
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(colorfx); i++) {
  if (colorfx[i][0] != val)
   continue;

  v4l2_dbg(1, s5c73m3_dbg, &state->sensor_sd,
    "Setting %s color effect\n",
    v4l2_ctrl_get_menu(state->ctrls.colorfx->id)[i]);

  return s5c73m3_isp_command(state, COMM_IMAGE_EFFECT,
      colorfx[i][1]);
 }
 return -EINVAL;
}
