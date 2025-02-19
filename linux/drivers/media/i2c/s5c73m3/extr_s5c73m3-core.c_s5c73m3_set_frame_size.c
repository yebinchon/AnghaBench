
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5c73m3_frame_size {unsigned int reg_val; int height; int width; } ;
struct s5c73m3 {scalar_t__ mbus_code; int sensor_sd; struct s5c73m3_frame_size** sensor_pix_size; } ;


 int COMM_CHG_MODE ;
 unsigned int COMM_CHG_MODE_NEW ;
 size_t RES_ISP ;
 size_t RES_JPEG ;
 scalar_t__ S5C73M3_JPEG_FMT ;
 int s5c73m3_dbg ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,unsigned int) ;
 int v4l2_dbg (int,int ,int *,char*,int ,int ,unsigned int) ;

__attribute__((used)) static int s5c73m3_set_frame_size(struct s5c73m3 *state)
{
 const struct s5c73m3_frame_size *prev_size =
     state->sensor_pix_size[RES_ISP];
 const struct s5c73m3_frame_size *cap_size =
     state->sensor_pix_size[RES_JPEG];
 unsigned int chg_mode;

 v4l2_dbg(1, s5c73m3_dbg, &state->sensor_sd,
   "Preview size: %dx%d, reg_val: 0x%x\n",
   prev_size->width, prev_size->height, prev_size->reg_val);

 chg_mode = prev_size->reg_val | COMM_CHG_MODE_NEW;

 if (state->mbus_code == S5C73M3_JPEG_FMT) {
  v4l2_dbg(1, s5c73m3_dbg, &state->sensor_sd,
    "Capture size: %dx%d, reg_val: 0x%x\n",
    cap_size->width, cap_size->height, cap_size->reg_val);
  chg_mode |= cap_size->reg_val;
 }

 return s5c73m3_isp_command(state, COMM_CHG_MODE, chg_mode);
}
