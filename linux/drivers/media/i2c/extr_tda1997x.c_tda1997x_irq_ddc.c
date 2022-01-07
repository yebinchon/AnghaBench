
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int detect_tx_5v_ctrl; scalar_t__ mptrw_in_progress; struct v4l2_subdev sd; } ;


 int MASK_DET_5V ;
 int MASK_EDID_MTP ;
 int REG_INT_FLG_CLR_DDC ;
 int io_read (struct v4l2_subdev*,int ) ;
 int io_write (struct v4l2_subdev*,int ,int) ;
 int tda1997x_detect_tx_5v (struct v4l2_subdev*) ;
 int v4l2_ctrl_s_ctrl (int ,int ) ;

__attribute__((used)) static void tda1997x_irq_ddc(struct tda1997x_state *state, u8 *flags)
{
 struct v4l2_subdev *sd = &state->sd;
 u8 source;

 source = io_read(sd, REG_INT_FLG_CLR_DDC);
 io_write(sd, REG_INT_FLG_CLR_DDC, source);
 if (source & MASK_EDID_MTP) {

  if (state->mptrw_in_progress)
   state->mptrw_in_progress = 0;
 }


 if (source & MASK_DET_5V) {
  v4l2_ctrl_s_ctrl(state->detect_tx_5v_ctrl,
     tda1997x_detect_tx_5v(sd));
 }
}
