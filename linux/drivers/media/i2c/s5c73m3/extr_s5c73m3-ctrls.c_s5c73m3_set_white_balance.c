
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* auto_wb; } ;
struct s5c73m3 {TYPE_2__ ctrls; int sensor_sd; } ;
struct TYPE_3__ {int id; } ;


 int ARRAY_SIZE (unsigned short const**) ;
 int COMM_AWB_MODE ;






 int EINVAL ;






 int s5c73m3_dbg ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,unsigned short const) ;
 int * v4l2_ctrl_get_menu (int ) ;
 int v4l2_dbg (int,int ,int *,char*,int ) ;

__attribute__((used)) static int s5c73m3_set_white_balance(struct s5c73m3 *state, int val)
{
 static const unsigned short wb[][2] = {
  { 128, 134},
  { 130, 136},
  { 129, 135},
  { 132, 138},
  { 131, 137},
  { 133, 139},
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(wb); i++) {
  if (wb[i][0] != val)
   continue;

  v4l2_dbg(1, s5c73m3_dbg, &state->sensor_sd,
    "Setting white balance to: %s\n",
    v4l2_ctrl_get_menu(state->ctrls.auto_wb->id)[i]);

  return s5c73m3_isp_command(state, COMM_AWB_MODE, wb[i][1]);
 }

 return -EINVAL;
}
